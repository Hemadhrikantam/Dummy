import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:dummy/features/signup/presentation/pages/upload_pet_photo_page.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_type_selection_card.dart';
import 'package:flutter/material.dart';

class PetSelectionPage extends StatefulWidget {
  const PetSelectionPage({super.key});
  static const routeName = '/PetSelectionPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetSelectionPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<PetSelectionPage> createState() => _PetSelectionPageState();
}

class _PetSelectionPageState extends State<PetSelectionPage> {
  String? selectedPet;
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 1),
          Styles.gap20,
          Text(
            AppText.whatTypeOfPet,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap30,
          Row(
            children: [
              PetTypeSelectionCard(
                name: AppText.dog,
                borderColor:
                    selectedPet == AppText.dog
                        ? AppColors.stepperColor
                        : AppColors.grey400,
                textColor:
                    selectedPet == AppText.dog
                        ? AppColors.stepperColor
                        : AppColors.black,
                onTap: () {
                  setState(() {
                    selectedPet = AppText.dog;
                  });
                },
              ),
              Styles.gap20,
              PetTypeSelectionCard(
                name: AppText.cat,
                borderColor:
                    selectedPet == AppText.cat
                        ? AppColors.stepperColor
                        : AppColors.grey400,
                textColor:
                    selectedPet == AppText.cat
                        ? AppColors.stepperColor
                        : AppColors.black,
                onTap: () {
                  setState(() {
                    selectedPet = AppText.cat;
                  });
                },
              ),
            ],
          ),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(UploadPetPhotoPage.routeName);
            },
          ),
          Styles.gap30,
          InfoCard(title: AppText.petTypeInfo),
        ],
      ),
    );
  }
}
