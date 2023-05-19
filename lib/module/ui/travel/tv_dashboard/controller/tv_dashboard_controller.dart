import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tv_dashboard_view.dart';

class TvDashboardController extends State<TvDashboardView>
    implements MvcController {
  static late TvDashboardController instance;
  late TvDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
