import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_text.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_bottom_sheet.dart';
import '../widgets/vaccines/add_vaccination_fields.dart';
import 'vaccination_success_page.dart';

class AddVaccinationPage extends StatelessWidget {
  const AddVaccinationPage({super.key});
  static const routeName = '/AddVaccinationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AddVaccinationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.addVaccination,
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
            context.push(VaccinationSuccessPage.route());
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
      child: const AddVaccinationForm(),
    );
  }
}
