import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:flutter/material.dart';

import 'pet_info_page.dart';

class UploadPetPhotoPage extends StatelessWidget {
  const UploadPetPhotoPage({super.key});
  static const routeName = '/UploadPetPhotoPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const UploadPetPhotoPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 2),
          Styles.gap20,
          Text(
            AppText.uploadPetPhoto,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap20,
          Text(
            AppText.showOffYourPetSmile,
            style: context.textTheme.titleSmall,
          ),
          Styles.gap30,
          __ImageUploadWidget(),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(PetInfoPage.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Text(
              AppText.skip,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class __ImageUploadWidget extends StatelessWidget {
  const __ImageUploadWidget();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: AppColors.buttonBackground,
      child: Text(
        AppText.upload,
        style: TextStyle(
          color: AppColors.buttonTextColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
