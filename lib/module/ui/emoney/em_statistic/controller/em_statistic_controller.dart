import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/em_statistic_view.dart';

class EmStatisticController extends State<EmStatisticView>
    implements MvcController {
  static late EmStatisticController instance;
  late EmStatisticView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List balances = [
    {
      "name": "Bills",
      "icon": Icons.wallet,
      "color": Colors.blue[400],
      "amount": 21.00,
      "balance": 3000,
      "date": "02 Feb 2023 . 08:00 AM",
    },
    {
      "name": "Shopping",
      "icon": Icons.shopping_bag,
      "color": Colors.blue[600],
      "amount": -5.00,
      "balance": 12000,
      "date": "01 Feb 2023 . 03:00 AM",
    },
    {
      "name": "Transfer",
      "icon": Icons.transfer_within_a_station,
      "color": Colors.blue[800],
      "amount": 32.15,
      "balance": 24000,
      "date": "26 Jan 2023 . 09:15 AM",
    },
  ];
}
