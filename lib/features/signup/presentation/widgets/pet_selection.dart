import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
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
        BlocSelector<RegisterBloc, RegisterState, PetType>(
          selector: (state) {
            return state.petType;
          },
          builder: (context, state) {
            return Row(
              children: [
                PetTypeSelectionCard(
                  name: PetType.Cat,
                  borderColor:
                      state == PetType.Cat
                          ? AppColors.stepperColor
                          : AppColors.grey400,
                  textColor:
                      state == PetType.Cat
                          ? AppColors.stepperColor
                          : AppColors.black,
                  onTap: () {
                    context.read<RegisterBloc>().add(
                      RegisterEvent.petType(PetType.Cat),
                    );
                  },
                ),
                Styles.gap12,
                PetTypeSelectionCard(
                  name: PetType.Dog,
                  borderColor:
                      state == PetType.Dog
                          ? AppColors.stepperColor
                          : AppColors.grey400,
                  textColor:
                      state == PetType.Dog
                          ? AppColors.stepperColor
                          : AppColors.black,
                  onTap: () {
                    context.read<RegisterBloc>().add(
                      RegisterEvent.petType(PetType.Dog),
                    );
                  },
                ),
                // Styles.gap40
              ],
            );
          },
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
        BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return InfoCard(
              title: AppText.petTypeInfo(
                state.petName.value,
                state.petType.name,
                state.petType == PetType.Cat
                    ? PetType.Dog.name
                    : PetType.Cat.name,
              ),
            );
          },
        ),
      ],
    );
  }
}
