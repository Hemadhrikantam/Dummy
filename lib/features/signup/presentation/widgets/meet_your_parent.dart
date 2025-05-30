import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:flutter/cupertino.dart';

class MeetYourParent extends StatelessWidget {
  const MeetYourParent({super.key, this.onNext});
  final VoidCallback? onNext;
  @override
  Widget build(BuildContext context) {
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

        AppTextFormField(
          headerText: AppText.petsName,
          hintText: '...',
          onChanged: (value) {},
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
            onNext?.call();
          },
        ),
      ],
    );
  }
}
