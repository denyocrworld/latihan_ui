import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "6",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(MdiIcons.chatQuestion),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => Get.to(const ProductListView()),
                child: const Text("Product List"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => Get.to(const MessageListView()),
                child: const Text("Message List"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
