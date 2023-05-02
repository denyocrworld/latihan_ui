import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/em_wallet_view.dart';

class EmWalletController extends State<EmWalletView> implements MvcController {
  static late EmWalletController instance;
  late EmWalletView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List expenses = [
    {
      "icon": Icons.wallet,
      "title": "Main Pocket",
      "amount": 50000,
    },
    {
      "icon": Icons.house,
      "title": "Main Pocket",
      "amount": 20000,
    },
    {
      "icon": Icons.holiday_village,
      "title": "Holiday",
      "amount": 3000,
    }
  ];

  List balances = [
    {
      "name": "Bayu",
      "photo":
          "https://images.unsplash.com/photo-1584043720379-b56cd9199c94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
      "amount": 5000,
      "date": "02 Feb 2023 . 08:00 AM"
    },
    {
      "name": "Andi",
      "photo":
          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "amount": -286,
      "date": "01 Feb 2023 . 03:00 AM"
    },
    {
      "name": "Della",
      "photo":
          "https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "amount": 340,
      "date": "26 Jan 2023 . 09:15 AM"
    },
    {
      "name": "Bella",
      "photo":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "amount": -900,
      "date": "21 Jan 2023 . 11:11 AM"
    },
    {
      "name": "Santi",
      "photo":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "amount": -400,
      "date": "18 Jan 2023 . 08:34 AM"
    }
  ];
}
