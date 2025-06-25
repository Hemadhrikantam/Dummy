import 'dart:async';
import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/image_utility.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<List<String>> customFilePicker(BuildContext context, {bool multiFile = false}) async {
  final Completer<List<String>> completer = Completer<List<String>>();
  CameraDevice preferredCameraDevice = CameraDevice.rear;
  final ImageUtilityServiceImpl imagePicker = const ImageUtilityServiceImpl();

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        child: Column(
          children: [
            Styles.gap4,
            AppGraber(),
            Styles.gap12,
            ListTile(
              leading: Icon(Icons.camera_alt, color: AppColors.stepperColor),
              title: Text("Take a Photo"),
              onTap: () async {
                final file = await imagePicker.pickImageFromCamera(
                  preferredCameraDevice: preferredCameraDevice,
                );
                Navigator.pop(context);
                if (file != null) {
                  completer.complete([file.path]);
                } else {
                  completer.complete([]);
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library, color: AppColors.stepperColor),
              title: Text("Choose from Gallery"),
              onTap: () async {
                final file = await imagePicker.pickImageFromGallery(
                  preferredCameraDevice: preferredCameraDevice,
                );
                Navigator.pop(context);
                if (file != null) {
                  completer.complete([file.path]);
                } else {
                  completer.complete([]);
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_file, color: AppColors.stepperColor),
              title: Text("Select Files"),
              onTap: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  allowMultiple: multiFile,
                );
                Navigator.pop(context);
                if (result != null) {
                  final files = result.paths.whereType<String>().toList();
                  completer.complete(files);
                } else {
                  completer.complete([]);
                }
              },
            ),
          ],
        ),
      );
    },
  );

  return completer.future;
}
