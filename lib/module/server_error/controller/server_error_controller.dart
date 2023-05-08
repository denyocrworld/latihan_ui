import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/server_error_view.dart';

class ServerErrorController extends State<ServerErrorView>
    implements MvcController {
  static late ServerErrorController instance;
  late ServerErrorView view;

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
