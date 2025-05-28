import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_text.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_bottom_sheet.dart';
import '../widgets/medication/add_medication_fields.dart';
import 'medication_success_page.dart';

class AddMedicationPage extends StatelessWidget {
  const AddMedicationPage({super.key});
  static const routeName = '/AddMedicationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AddMedicationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.addMedications,
      subTitle: '',
      onlyTitle: true,
      bottom: Container(
        width: double.infinity,
        padding: Styles.edgeInsetsAll12,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey700,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: AppButton(
          onPressed: () {
            context.push(MedicationSuccessPage.route());
          },
          name: Text(
            AppText.addVaccination,
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.buttonTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ),
      child: const AddMedicationForm(),
    );
  }
}
