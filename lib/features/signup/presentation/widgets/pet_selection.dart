import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/features/signup/presentation/bloc/register/register_bloc.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_type_selection_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetSelection extends StatefulWidget {
  const PetSelection({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _PetSelectionState();
}

class _PetSelectionState extends State<PetSelection> {
  PetType selectedPet = PetType.Cat;
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
                context.read<RegisterBloc>().add(
                  RegisterEvent.petType(selectedPet),
                );
              },
            ),
            Styles.gap12,
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
                context.read<RegisterBloc>().add(
                  RegisterEvent.petType(selectedPet),
                );
              },
            ),
            // Styles.gap40
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
