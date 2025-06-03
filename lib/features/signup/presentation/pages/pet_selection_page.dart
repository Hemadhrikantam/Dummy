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

import '../../../../core/enum/breed.dart';

class PetSelectionPage extends StatefulWidget {
  const PetSelectionPage({super.key, this.onNext});
  final VoidCallback? onNext;
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
  PetType selectedPet = PetType.Cat;
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
                name: PetType.Dog,
                borderColor:
                    selectedPet == PetType.Dog
                        ? AppColors.stepperColor
                        : AppColors.grey400,
                textColor:
                    selectedPet == PetType.Dog
                        ? AppColors.stepperColor
                        : AppColors.black,
                onTap: () {
                  setState(() {
                    selectedPet = PetType.Dog;
                  });
                },
              ),
              Styles.gap20,
              PetTypeSelectionCard(
                name: PetType.Cat,
                borderColor:
                    selectedPet == PetType.Cat
                        ? AppColors.stepperColor
                        : AppColors.grey400,
                textColor:
                    selectedPet == PetType.Cat
                        ? AppColors.stepperColor
                        : AppColors.black,
                onTap: () {
                  setState(() {
                    selectedPet = PetType.Cat;
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
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              widget.onNext?.call();
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
