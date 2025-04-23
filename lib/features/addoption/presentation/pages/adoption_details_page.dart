import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../widgets/adoption_details_card.dart';

class AdoptionDetailsPage extends StatelessWidget {
  const AdoptionDetailsPage({super.key});
  static const routeName = '/MedicationDetailsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AdoptionDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
      subTitle: '',
      onlyTitle: true,
      bottom: CustomBottomSheet(
        child: Row(
          children: [
            Expanded(
              child: AppTextButton(
                onPressed: () {
                  BottomModels.adoptionDeleteBottomSheet(context);
                },
                backgroundColor: AppColors.white,
                name: AppText.delete,
                textColor: AppColors.buttonTextColor,
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
        children: [AdoptionDetailsCard(), Styles.gap80],
      ),
    );
  }
}
