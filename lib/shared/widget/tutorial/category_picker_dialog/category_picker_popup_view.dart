// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExCategoryPickerPopupView extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  const ExCategoryPickerPopupView({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<ExCategoryPickerPopupView> createState() =>
      _ExCategoryPickerPopupViewState();
}

class _ExCategoryPickerPopupViewState extends State<ExCategoryPickerPopupView> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select an items"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.items.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = widget.items[index];
                  bool selected = selectedIndex == index;
                  return InkWell(
                    onTap: () => updateIndex(index),
                    child: Card(
                      color: selected ? Colors.black : Colors.grey,
                      child: ListTile(
                        title: Text(item["label"]),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pop(context, widget.items[selectedIndex]);
                },
                child: const Text("Confirm"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
