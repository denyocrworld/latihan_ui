import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/counter_picker/counter_picker.dart';

class TvDashboardView extends StatefulWidget {
  const TvDashboardView({Key? key}) : super(key: key);

  Widget build(context, TvDashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Hello, Danny",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Badge(
                      label: Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "Book your ticket\ntoday",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Theme(
                  data: ThemeData.light(),
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          QCategoryPicker(
                            items: const [
                              {
                                "label": "One way",
                                "value": "One way",
                              },
                              {
                                "label": "Round trip",
                                "value": "Round trip",
                              },
                              {
                                "label": "Multiple city",
                                "value": "Multiple city",
                              },
                            ],
                            clipBehaviour: Clip.antiAlias,
                            onChanged: (index, label, value, item) {},
                            itemBuilder: (item, selected, action) {
                              return InkWell(
                                onTap: () => action(),
                                child: Card(
                                  color: selected
                                      ? const Color(0xfffdc620)
                                      : Colors.grey[300],
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 4.0,
                                    ),
                                    child: Text(
                                      item["label"],
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        color: selected
                                            ? const Color(0xff393e48)
                                            : Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          QDropdownField(
                            label: "From",
                            validator: Validator.required,
                            items: const [
                              {
                                "label": "Yogyakarta",
                                "value": "Yogyakarta",
                              },
                              {
                                "label": "Jakarta",
                                "value": "Jakarta",
                              },
                              {
                                "label": "Bogor",
                                "value": "Bogor",
                              },
                            ],
                            onChanged: (value, label) {},
                          ),
                          QDropdownField(
                            label: "To",
                            validator: Validator.required,
                            items: const [
                              {
                                "label": "Yogyakarta",
                                "value": "Yogyakarta",
                              },
                              {
                                "label": "Jakarta",
                                "value": "Jakarta",
                              },
                              {
                                "label": "Bogor",
                                "value": "Bogor",
                              },
                            ],
                            onChanged: (value, label) {},
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: QDatePicker(
                                  label: "Depart",
                                  validator: Validator.required,
                                  onChanged: (value) {
                                    print("value: $value");
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: QDatePicker(
                                  label: "Return",
                                  validator: Validator.required,
                                  onChanged: (value) {
                                    print("value: $value");
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: QCounterPicker(
                                  label: "Passengers (adult)",
                                  validator: Validator.required,
                                  value: 0,
                                  onChanged: (value) {
                                    print("Value: $value");
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: QCounterPicker(
                                  label: "Passengers (child)",
                                  validator: Validator.required,
                                  value: 0,
                                  onChanged: (value) {
                                    print("Value: $value");
                                  },
                                ),
                              ),
                            ],
                          ),
                          QDropdownField(
                            label: "Train Classes",
                            validator: Validator.required,
                            items: const [
                              {
                                "label": "Executive",
                                "value": "Executive",
                              },
                              {
                                "label": "Business",
                                "value": "Business",
                              },
                              {
                                "label": "Economy",
                                "value": "Economy",
                              }
                            ],
                            onChanged: (value, label) {},
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            height: 42,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfffdc620),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              onPressed: () => Get.to(const TvSeatPickerView()),
                              child: const Text(
                                "Continue",
                                style: TextStyle(
                                  color: Color(0xff393e48),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TvDashboardView> createState() => TvDashboardController();
}
