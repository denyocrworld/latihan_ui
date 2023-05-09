import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hyper_ui/core.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  doLogin() async {
    showLoading();
    try {
      var isSuccess = await AuthService.login(
        email: email!,
        password: password!,
      );
      hideLoading();

      if (!isSuccess) {
        showInfoDialog("Wrong username or password!");
        return;
      }

      Get.offAll(const DashboardView());
    } on Exception catch (err) {
      hideLoading();
      print(err);

      // showInfoDialog("Server bermasalah!");
      Get.to(const ServerErrorView());
    }
  }

  doGoogleLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      //TODO: on login success
      //------------------
      Get.offAll(const MainNavigationView());
    } catch (_) {}
  }
}
