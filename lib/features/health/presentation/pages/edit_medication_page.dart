import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/constent/app_text.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../widgets/medication/add_medication_fields.dart';
import 'medication_success_page.dart';

class EditMedicationPage extends StatelessWidget {
  const EditMedicationPage({super.key});
  static const routeName = '/EditMedicationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const EditMedicationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.editMedications,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: AppButton(
          onPressed: () {
            context.push(MedicationSuccessPage.route());
          },
          name: Text(
            AppText.editMedications,
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
