// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core.dart';

class CustomImagePicker extends StatefulWidget {
  final Function(String) onChanged;
  const CustomImagePicker({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          photoUrl ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () async {
            //1 get_image_gallery
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: [
                "png",
                "jpg",
              ],
              allowMultiple: false,
            );
            if (result == null) return;
            File file = File(result.files.single.path!);
            String filePath = file.path;

            //2 dio_upload
            final formData = FormData.fromMap({
              'image': MultipartFile.fromBytes(
                File(filePath).readAsBytesSync(),
                filename: "upload.jpg",
              ),
            });

            var res = await Dio().post(
              'https://api.imgbb.com/1/upload?key=b55ef3fd02b80ab180f284e479acd7c4',
              data: formData,
            );

            var data = res.data["data"];
            var url = data["url"];

            photoUrl = url;
            setState(() {});

            widget.onChanged(url);
          },
          child: const Text("Upload"),
        ),
      ],
    );
  }
}
