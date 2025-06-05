import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../widgets/vaccines/date_list.dart';
import '../widgets/vaccines/vaccination_details_card.dart';

class VaccinationDetailsPage extends StatelessWidget {
  const VaccinationDetailsPage({super.key});
  static const routeName = '/VaccinationDetailsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const VaccinationDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: Row(
          children: [
            Expanded(
              child: AppTextButton(
                onPressed: () {
                  BottomModels.medicationDeleteBottomSheet(context);
                  // BottomModels.medicationTakingBottomSheet(context);
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
        padding: Styles.edgeInsetsOnlyW08,
        children: [
          VaccinationDetailsCard(),
          Styles.gap15,
          Text(
            AppText.vaccinations,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          DateList(),
          Styles.gap20,
          Styles.gap20,
          Styles.gap20,
        ],
      ),
    );
  }
}
