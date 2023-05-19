import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/em_main_navigation_view.dart';

class EmMainNavigationController extends State<EmMainNavigationView>
    implements MvcController {
  static late EmMainNavigationController instance;
  late EmMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
