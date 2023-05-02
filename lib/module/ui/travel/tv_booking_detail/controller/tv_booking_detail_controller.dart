import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tv_booking_detail_view.dart';

class TvBookingDetailController extends State<TvBookingDetailView> implements MvcController {
  static late TvBookingDetailController instance;
  late TvBookingDetailView view;

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