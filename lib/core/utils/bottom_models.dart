import 'dart:io';
import 'dart:ui';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/image_picker_container.dart';

class BottomModels {
  static Color backgroundColor = AppColors.white;

  static Future<File?> imagePickerWidget<T>(
    BuildContext context, {
    T? Function()? onPressedCamera,
    T? Function()? onPressedGallery,
    CameraDevice preferredCameraDevice = CameraDevice.rear,
  }) async {
    return showModalBottomSheet<File?>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      context: context,
      builder:
          (_) => ImagePickerContainer<T>(
            onPressedCamera: onPressedCamera,
            onPressedGallery: onPressedGallery,
            preferredCameraDevice: preferredCameraDevice,
          ),
    );
  }

  // static Future<T?> datePickerBottomSheet<T>(BuildContext context) {
  //   return showModalBottomSheet<T>(
  //     isScrollControlled: true,
  //     backgroundColor: backgroundColor,
  //     context: context,
  //     shape: Styles.bottomDialog,
  //     builder: (BuildContext context) {
  //       return CustomDatePickerWidget();
  //     },
  //   );
  // }
}
