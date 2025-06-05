import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../core/widgets/app_graber.dart';
import '../../../../core/widgets/buttons/app_button.dart';

class AddMealSuccessBottomSheetContent extends StatelessWidget {
  const AddMealSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Styles.gap6,
          AppGraber(),
          Styles.gap16,
          SvgPicture.asset(
            ImageResources.petFood,
            height: context.height * .1,
            fit: BoxFit.contain,
          ),

          Text(
            AppText.youreDoingGreat,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap10,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: AppText.dummyLovedHisMeals,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: "[Pet's Name] well-fed!",
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Styles.gap15,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    context.pop();
                    context.push(PetDairyPage.route());
                  },
                  showShadow: false,
                  borderColor: AppColors.grey500,
                  backgroundColor: AppColors.white,
                  name: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: AppText.logAMemoryOf,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.buttonTextColor,
                        letterSpacing: -.5,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: " [Pet's Name]'s meal!",
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                            letterSpacing: -.5,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Styles.gap10
        ],
      ),
    );
  }
}
