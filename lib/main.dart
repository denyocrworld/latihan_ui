// Kelas Online /w DenyOcr || Mau join ? Buka:
// ? capekngoding.com           LINK GMEET: tinyurl.com/gmeet-dong

import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

/*
Flutter
Bahasa: Dart
Framework: Flutter

UI: Dart
Logic: Dart

Dart
  Front End
  Back End

Desktop
Mobile
  Android
  IOS
Web

Dart lebih gampang dari Javascript
*/
void main() async {
  await initialize();

  Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

/*
State Management = Utillity untuk memanage state

StatefulWidget
Provider
Bloc
Getx
Riverpod
*/
class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    // bool isLoggedIn = true;
    // Widget home = const AppListView();
    // if (isLoggedIn) {
    //   home = const DemoView();
    // }

    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const AppListView(),
          // home: const MessageListView(),
          builder: (context, child) {
            // bool isLoggedIn = true;
            // if (isLoggedIn) {
            //   child = const DemoView();
            // }

            return debugView(
              context: context,
              child: child,
              visible: true,
            );
          },
        );
      },
    );
  }
}
