import 'package:firebase_core/firebase_core.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

import 'firebase_options.dart';

/*
Join Kelas Online /w DenyOcr
Dapatkan harga Flash Sale hari ini! Buka:
? capekngoding.com
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const MainNavigationView(),
          builder: (context, child) {
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
