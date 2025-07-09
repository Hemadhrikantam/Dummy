import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_text.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';

class AddPetPage extends StatelessWidget {
  const AddPetPage({super.key, this.id});
  static const routeName = '/AddPetPage';
  final int? id;
  static Route<T> route<T>({int? id}) {
    return MaterialPageRoute<T>(
      builder: (context) => AddPetPage(id: id),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: id != null ? AppText.editPet : AppText.addPet,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      bottom: BottomActionButton(
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
