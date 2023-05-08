// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// [Food, Drink]
// [1,2]
// [{"label": Food","value": "Food"}]

class ExMultiCategoryPicker extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final String label;
  final Function(List<Map<String, dynamic>> values) onChanged;
  const ExMultiCategoryPicker({
    Key? key,
    required this.items,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ExMultiCategoryPicker> createState() => _ExMultiCategoryPickerState();
}

class _ExMultiCategoryPickerState extends State<ExMultiCategoryPicker> {
  List categories = [];
  // int selectedIndex = 0;
  List<Map<String, dynamic>> selectedItems = [];

  @override
  void initState() {
    categories = widget.items;
    super.initState();
  }

  updateCategorySelectedIndex(Map<String, dynamic> item) {
    // if (selectedItems.contains(newIndex)) {
    //   selectedItems.remove(newIndex);
    // } else {
    //   selectedItems.add(newIndex);
    // }

    var index = selectedItems.indexWhere((i) => i["label"] == item["label"]);
    if (index > -1) {
      selectedItems.removeAt(index);
    } else {
      selectedItems.add(item);
    }
    setState(() {});

    widget.onChanged(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              var item = categories[index];
              var itemIndex =
                  selectedItems.indexWhere((i) => i["label"] == item["label"]);
              bool selected = itemIndex > -1;
              return InkWell(
                onTap: () => updateCategorySelectedIndex(item),
                child: Card(
                  color: selected ? Colors.black : Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item["label"]),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
