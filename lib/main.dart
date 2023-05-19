import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngodingz',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const AppListView(),
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
