import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/server_error_controller.dart';

class ServerErrorView extends StatefulWidget {
  const ServerErrorView({Key? key}) : super(key: key);

  Widget build(context, ServerErrorController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ServerError"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              Icon(
                Icons.error,
                size: 64.0,
                color: Colors.red,
              ),
              Text(
                "Server error",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ServerErrorView> createState() => ServerErrorController();
}
