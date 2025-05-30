import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_type_selection_card.dart';
import 'package:flutter/cupertino.dart';

class PetSelection extends StatefulWidget {
  const PetSelection({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _PetSelectionState();
}

class _PetSelectionState extends State<PetSelection> {
  String? selectedPet = AppText.dog;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppText.whatTypeOfPet,
          style: context.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
        ),
        Styles.gap30,
        Row(
          children: [
            
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
            Styles.gap12,
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
            Styles.gap40
          ],
        ),
        Styles.gap50,
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
          },
        ),
        Styles.gap30,
        InfoCard(title: AppText.petTypeInfo),
      ],
    );
  }
}
