import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/signup/presentation/bloc/register/register_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeetYourParent extends StatelessWidget {
  MeetYourParent({super.key, this.onNext});
  final VoidCallback? onNext;
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppText.introduceYourPet,
              style: context.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            Styles.gap30,
            BlocSelector<RegisterBloc, RegisterState, NotEmpty>(
              selector: (state) {
                return state.petName;
              },
              builder: (context, state) {
                return AppTextFormField(
                  headerText: AppText.petsName,
                  controller: nameController..text = state.value,
                  isMandatory: true,
                  hintText: '...',
                  onChanged: (value) {
                    context.read<RegisterBloc>().add(
                      RegisterEvent.petName(value),
                    );
                  },
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
              backgroundColor:
                  state.petName.isValid && state.petName.value.length > 2
                      ? AppColors.buttonBackground
                      : AppColors.grey,
              onPressed:
                  state.petName.isValid && state.petName.value.length > 2
                      ? () {
                        onNext?.call();
                      }
                      : () {},
            ),
          ],
        );
      },
    );
  }
}
