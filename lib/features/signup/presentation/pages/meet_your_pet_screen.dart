import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:dummy/features/signup/presentation/pages/pet_selection_page.dart';
import 'package:flutter/material.dart';

class MeetYourPetScreen extends StatelessWidget {
  const MeetYourPetScreen({super.key});
  static const routeName = '/MeetYourPetScreen';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const MeetYourPetScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 0),
          Styles.gap20,
          Text(
            AppText.introduceYourPet,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap30,
          Text(AppText.petsName, style: context.textTheme.titleSmall),
          Styles.gap6,
          AppTextFormField(hintText: '...', onChanged: (value) {}),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(PetSelectionPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
