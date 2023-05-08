import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../shared/widget/tutorial/category_picker/category_picker.dart';
import '../../../shared/widget/tutorial/category_picker_dialog/category_picker_dialog.dart';
import '../../../shared/widget/tutorial/multi_category_picker/multi_category_picker.dart';

class DemoView extends StatefulWidget {
  const DemoView({Key? key}) : super(key: key);

  Widget build(context, DemoController controller) {
    controller.view = this;

    // return const ExCustomNavigation(
    //   menus: ["Home", "Order", "Favorite", "Profile"],
    //   views: [
    //     DashboardView(),
    //     OrderView(),
    //     FavoriteView(),
    //     ProfileView(),
    //   ],
    // );

    /*
    StatefulWidget
    StatlessWidget
    ValueListenableBuilder
    StreamBuilder

    State di level View/Halaman
    State di level ReuseableWidget
    State di level Global 
      Language
      Theme
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      //ALT+SHIFT+S
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExCategoryPicker(
              label: "Category",
              items: const [
                {
                  "label": "Food",
                  "value": "Food",
                },
                {
                  "label": "Drink",
                  "value": "Drink",
                },
                {
                  "label": "Salad",
                  "value": "Salad",
                },
                {
                  "label": "Dessert",
                  "value": "Dessert",
                }
              ],
              onChanged: (value) {
                controller.foodCategory = value["value"];
              },
            ),
            ExMultiCategoryPicker(
              label: "Category (Multiple Selection)",
              items: const [
                {
                  "label": "Food",
                  "value": "Food",
                },
                {
                  "label": "Drink",
                  "value": "Drink",
                },
                {
                  "label": "Salad",
                  "value": "Salad",
                },
                {
                  "label": "Dessert",
                  "value": "Dessert",
                }
              ],
              onChanged: (value) {
                // controller.foodCategory = value["value"];
                controller.foodCategories = value;
              },
            ),
            ExCategoryPicker(
              label: "Gender",
              items: const [
                {
                  "label": "Female",
                  "value": "Female",
                },
                {
                  "label": "Male",
                  "value": "Male",
                },
              ],
              onChanged: (value) {
                controller.gender = value["value"];
              },
            ),
            ExCategoryPicker(
              label: "Food Grade",
              items: const [
                {
                  "label": "Grade A",
                  "value": "Grade A",
                },
                {
                  "label": "Grade B",
                  "value": "Grade B",
                },
              ],
              onChanged: (value) {
                controller.foodGrade = value["value"];
              },
            ),
            ExCategoryPickerDialog(
              label: "Category (Multiple Selection)",
              items: const [
                {
                  "label": "Food",
                  "value": "Food",
                },
                {
                  "label": "Drink",
                  "value": "Drink",
                },
                {
                  "label": "Salad",
                  "value": "Salad",
                },
                {
                  "label": "Dessert",
                  "value": "Dessert",
                }
              ],
              onChanged: (value) {
                print("1. $value");
                print("2. ${value["label"]}");
                print("3. ${value["value"]}");
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DemoView> createState() => DemoController();
}
