import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_main_navigation_view.dart';

class FdMainNavigationController extends State<FdMainNavigationView>
    implements MvcController {
  static late FdMainNavigationController instance;
  late FdMainNavigationView view;

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
