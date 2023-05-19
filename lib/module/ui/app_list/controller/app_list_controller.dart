import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AppListController extends State<AppListView> implements MvcController {
  static late AppListController instance;
  late AppListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List apps = [
    {
      "label": "Food Delivery",
      "icon": Icons.food_bank,
      "page": const FdMainNavigationView(),
      "theme": getFoodDeliveryTheme(),
    },
    {
      "label": "EMoney",
      "icon": Icons.wallet,
      "page": const EmMainNavigationView(),
      "theme": getEmoneyTheme(),
    },
    {
      "label": "Travel",
      "icon": Icons.flight,
      "page": const TvMainNavigationView(),
      "theme": getTravelTheme(),
    },
  ];
}
