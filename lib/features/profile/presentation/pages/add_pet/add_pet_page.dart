import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/custom_bottom_sheet.dart';

class AddPetPage extends StatelessWidget {
  const AddPetPage({super.key});
  static const routeName = '/AddPetPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AddPetPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.addPet,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
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
            context.pop();
          },
          name: Text(
            AppText.save,
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.buttonTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ),
      child: const AddPetForm(),
    );
  }
}
