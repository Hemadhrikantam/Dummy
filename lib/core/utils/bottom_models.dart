import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/features/auth/presentation/widgets/otp_success_bottom_sheet_content.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_expenses_form.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_meal_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/addoption/presentation/widgets/add_adoption_form.dart';
import '../../features/addoption/presentation/widgets/adoption_delete_bottom_sheet_content.dart';
import '../../features/dailycare/presentation/widgets/add/add_deworming_form.dart';
import '../../features/dailycare/presentation/widgets/add/add_grooming_form.dart';
import '../../features/dailycare/presentation/widgets/add/add_walk_form.dart';
import '../../features/dailycare/presentation/widgets/add_deworming_success_bottom_sheet_content.dart';
import '../../features/dailycare/presentation/widgets/add_expenses_success_bottom_sheet_content.dart';
import '../../features/dailycare/presentation/widgets/add_grooming_success_bottom_sheet_content.dart';
import '../../features/dailycare/presentation/widgets/add_meal_success_bottom_sheet_content.dart';
import '../../features/dailycare/presentation/widgets/add_walk_success_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medication/medication_delete_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medication/medication_delete_success_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medication/medication_taking_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/medication/medication_taking_success_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/vaccines/vaccination_marked_success_bottom_sheet_content.dart';
import '../../features/health/presentation/widgets/vaccines/vaccination_marking_bottom_sheet_content.dart';
import '../../features/profile/presentation/widgets/manage_family_members/family_member_role_bottom_sheet_content.dart';
import '../../features/profile/presentation/widgets/manage_family_members/manage_family_members_bottom_sheet_content.dart';
import '../../features/profile/presentation/widgets/pet_dairy/add_pet_documents.dart';
import '../../features/profile/presentation/widgets/pet_dairy/add_pet_media.dart';
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

  //daily care

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

  static Future<T?> addMealSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddMealSuccessBottomSheetContent();
      },
    );
  }

  static Future<T?> addWalkSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddWalkSuccessBottomSheetContent();
      },
    );
  }

  static Future<T?> addGroomingSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddGroomingSuccessBottomSheetContent();
      },
    );
  }

  static Future<T?> addExpensesSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddExpensesSuccessBottomSheetContent();
      },
    );
  }

  static Future<T?> addDewormingSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddDewormingSuccessBottomSheetContent();
      },
    );
  }

  //medications
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

  static Future<T?> vaccinationMarkingBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return VaccinationMarkingBottomSheetContent();
      },
    );
  }

  static Future<T?> vaccinationMarkedSuccessBottomSheet<T>(
    BuildContext context,
  ) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return VaccinationMarkedSuccessBottomSheetContent();
      },
    );
  }

  //pet dairy
  static Future<T?> addPetDocumentsBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddPetDocuments();
      },
    );
  }

  static Future<T?> addPetMediaBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddPetMedia();
      },
    );
  }

  //adoption
  static Future<T?> addAdoptionBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AddAdoptionForm();
      },
    );
  }

  static Future<T?> adoptionDeleteBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return AdoptionDeleteBottomSheetContent();
      },
    );
  }

  static Future<T?> manageFamilyMembersBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return ManageFamilyMembersBottomSheetContent();
      },
    );
  }

  static Future<T?> familyMemberRoleBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return FamilyMemberRoleBottomSheetContent();
      },
    );
  }

  static Future<T?> otpSuccessBottomSheet<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return OtpSuccessBottomSheetContent();
      },
    );
  }
}
