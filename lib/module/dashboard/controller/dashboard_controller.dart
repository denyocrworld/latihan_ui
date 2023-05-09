import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doAddToCart(Map item) {
    //fire_user
    if (FirebaseAuth.instance.currentUser == null) {
      Get.offAll(const LoginView());
      return;
    }

    showInfoDialog("Product: ${item["id"]}");
  }
}
