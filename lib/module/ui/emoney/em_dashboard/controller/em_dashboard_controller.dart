import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/em_dashboard_view.dart';

class EmDashboardController extends State<EmDashboardView>
    implements MvcController {
  static late EmDashboardController instance;
  late EmDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menus = [
    {
      "title": "Add Money",
      "icon":
          "https://icons.iconarchive.com/icons/hopstarter/sleek-xp-basic/128/Money-icon.png",
      "description": "Top-up some money into your account",
    },
    {
      "title": "Send/Pay",
      "icon":
          "https://icons.iconarchive.com/icons/uiconstock/e-commerce/128/google-wallet-icon.png",
      "description": "Pay send or top-up money to other bank or e-wallet",
    },
    {
      "title": "Request Money",
      "icon":
          "https://icons.iconarchive.com/icons/custom-icon-design/flatastic-4/128/Wallet-icon.png",
      "description": "Request momney from your friends or family",
    },
    {
      "title": "Pay Bills",
      "icon":
          "https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-11/128/coins-icon.png",
      "description": "Pay electricity, water, internet or other bills.",
    }
  ];

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  List contacts = [
    {
      "name": "Bayu",
      "photo":
          "https://images.unsplash.com/photo-1584043720379-b56cd9199c94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Andi",
      "photo":
          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Della",
      "photo":
          "https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Bella",
      "photo":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Santi",
      "photo":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    }
  ];
}
