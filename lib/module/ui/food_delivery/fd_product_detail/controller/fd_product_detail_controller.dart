import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_product_detail_view.dart';

class FdProductDetailController extends State<FdProductDetailView>
    implements MvcController {
  static late FdProductDetailController instance;
  late FdProductDetailView view;

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
