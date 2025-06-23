import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/health/presentation/widgets/success_animation_wrap.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../core/widgets/app_graber.dart';
import '../../../../core/widgets/buttons/app_button.dart';

class AddAdoptionSuccessBottomSheetContent extends StatelessWidget {
  const AddAdoptionSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW20,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: SuccessAnimationWrap(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Styles.gap6,
              AppGraber(),
              Styles.gap16,
              AppAssestsImage(path:
                ImageResources.addAdoption,
                height: context.height * .1,
                boxFit: BoxFit.contain,
              ),

              Text(
                AppText.listedforAdoption,
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
                  text: AppText.thankyouforgiving,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Styles.gap15,
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      onPressed: () {
                        context.pop();
                      },
                      showShadow: false,
                      borderColor: AppColors.grey500,
                      backgroundColor: AppColors.white,
                      name: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: AppText.viewMyListings,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                            letterSpacing: -.5,
                            fontSize: 14,
                          ),
                         
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Styles.gap10,
            ],
          ),
        ),
      ),
    );
  }
}
