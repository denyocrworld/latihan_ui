import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../../login/view/login_view.dart';
import '../view/profile_view.dart';

class ProfileController extends State<ProfileView> implements MvcController {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(const LoginView());
  }
}
