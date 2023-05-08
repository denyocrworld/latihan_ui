// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/widget/tutorial/category_picker_dialog/category_picker_popup_view.dart';

class ExCategoryPickerDialog extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final String label;
  final Function(Map<String, dynamic> value) onChanged;
  const ExCategoryPickerDialog({
    Key? key,
    required this.label,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ExCategoryPickerDialog> createState() => _ExCategoryPickerDialogState();
}

class _ExCategoryPickerDialogState extends State<ExCategoryPickerDialog> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var value = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ExCategoryPickerPopupView(
                    items: widget.items,
                  )),
        );
        if (value == null) return;
        controller.text = value["label"];
        widget.onChanged(value);
      },
      child: AbsorbPointer(
        child: TextFormField(
          controller: controller,
          maxLength: 20,
          decoration: const InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.blueGrey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
              ),
            ),
            helperText: "What's your name?",
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
