import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AppListView extends StatefulWidget {
  const AppListView({Key? key}) : super(key: key);

  Widget build(context, AppListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: controller.apps.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.apps[index];
                  return InkWell(
                    onTap: () {
                      Get.mainTheme.value = item["theme"];
                      Get.offAll(item["page"]);
                    },
                    child: Container(
                      color: Colors.purple,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item["icon"],
                            size: 32.0,
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            item["label"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AppListView> createState() => AppListController();
}
