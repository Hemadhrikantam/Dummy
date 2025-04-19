import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_expenses_form.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_meal_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/dailycare/presentation/widgets/add/add_deworming_form.dart';
import '../../features/dailycare/presentation/widgets/add/add_grooming_form.dart';
import '../../features/dailycare/presentation/widgets/add/add_walk_form.dart';
import '../../features/health/presentation/widgets/medications/medication_delete_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medications/medication_delete_success_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medications/medication_taking_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medications/medication_taking_success_bottom_sheet_content.dart';
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

  static Future<T?> addMealsBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddMealForm();
      },
    );
  }

  static Future<T?> addWalksBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddWalkForm();
      },
    );
  }

  static Future<T?> addGroomingBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddGroomingForm();
      },
    );
  }

  static Future<T?> addDeWroomingBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddDewormingForm();
      },
    );
  }

  static Future<T?> addExpansesBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddExpensesForm();
      },
    );
  }

  static Future<T?> overViewBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return Text('data');
      },
    );
  }

  static Future<T?> medicationDeleteBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return MedicationDeleteBottomSheetContent();
      },
    );
  }

  static Future<T?> medicationDeleteSuccessBottomSheet<T>(
    BuildContext context,
  ) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return MedicationDeleteSuccessBottomSheetContent();
      },
    );
  }

  static Future<T?> medicationTakingBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return MedicationTakingBottomSheetContent();
      },
    );
  }

  static Future<T?> medicationTakingSuccessBottomSheet<T>(
    BuildContext context,
  ) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return MedicationTakingSuccessBottomSheetContent();
      },
    );
  }
}
