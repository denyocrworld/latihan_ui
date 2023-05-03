import 'package:flutter/material.dart';
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
}
