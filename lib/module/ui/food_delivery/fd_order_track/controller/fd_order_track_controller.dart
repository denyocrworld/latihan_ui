import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_order_track_view.dart';

class FdOrderTrackController extends State<FdOrderTrackView>
    implements MvcController {
  static late FdOrderTrackController instance;
  late FdOrderTrackView view;

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
