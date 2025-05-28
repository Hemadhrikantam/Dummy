import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/custom_bottom_sheet.dart';
import 'package:dummy/features/health/presentation/widgets/medication/date_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../widgets/medication/medication_details_card.dart';

class MedicationDetailsPage extends StatelessWidget {
  const MedicationDetailsPage({super.key});
  static const routeName = '/MedicationDetailsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const MedicationDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
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
        child: Row(
          children: [
            Expanded(
              child: AppTextButton(
                onPressed: () {
                  BottomModels.medicationDeleteBottomSheet(context);
                },
                backgroundColor: AppColors.white,
                name: AppText.delete,
                textColor: AppColors.red,
              ),
            ),
            Styles.gap10,
            Expanded(
              child: AppButton(
                name: Center(
                  child: Text(
                    AppText.edit,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      child: ListView(
        padding: Styles.edgeInsetsOnlyH00,
        children: [
          MedicationDetailsCard(),
          Styles.gap15,
          Text(
            AppText.medications,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          DateList(),
        ],
      ),
    );
  }
}
