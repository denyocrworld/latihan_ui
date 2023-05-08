// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExCategoryPicker extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final String label;
  final Function(Map<String, dynamic> value) onChanged;
  const ExCategoryPicker({
    Key? key,
    required this.items,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ExCategoryPicker> createState() => _ExCategoryPickerState();
}

class _ExCategoryPickerState extends State<ExCategoryPicker> {
  List categories = [];
  int selectedIndex = 0;

  @override
  void initState() {
    categories = widget.items;
    super.initState();
  }

  updateCategorySelectedIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    widget.onChanged(categories[selectedIndex]);
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
              bool selected = selectedIndex == index;
              return InkWell(
                onTap: () => updateCategorySelectedIndex(index),
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
