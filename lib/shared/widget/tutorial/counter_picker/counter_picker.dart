// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExCounterPicker extends StatefulWidget {
  final Function(int) onChanged;
  const ExCounterPicker({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ExCounterPicker> createState() => ExCounterPickerState();
}

class ExCounterPickerState extends State<ExCounterPicker> {
  int counter = 0;
  increaseCounter() {
    counter++;
    setState(() {});
  }

  decreaseCounter() {
    if (counter == 0) return;
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 12.0,
            child: Center(
              child: IconButton(
                onPressed: () => decreaseCounter(),
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 9.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$counter",
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 12.0,
            child: Center(
              child: IconButton(
                onPressed: () => increaseCounter(),
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 9.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
