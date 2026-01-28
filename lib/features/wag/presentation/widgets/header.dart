import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, this.onProfileTap, this.petImage});
  final VoidCallback? onProfileTap;
    final String? petImage;
  @override
  Widget build(BuildContext context) {
    // bool premium = true;
    return Padding(
      padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyW10,
      child: Column(
        children: [
          Row(
            children: [
GestureDetector(
  onTap: () {
    context.pop();
  },
  child: Container(
    padding: Styles.edgeInsetsAll10,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: const Color(0xffa6571b),
    ),
    child: const Icon(
      Icons.arrow_back_ios_new,
      size: 20, 
      color: Color(0xffffead1),
    ),
  ),
),




              Spacer(),
              GestureDetector(
                  onTap: () {
                    if (onProfileTap == null) {
                      context.pushNamed(ProfileOptionsPage.routeName);
                    } else {
                      onProfileTap?.call();
                    }
                  },
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: CustomCard(
                      padding: Styles.edgeInsetsAll02,
                      borderRadius: Styles.borderRadiusCircular40,
                      border: Border.all(width: 2, color: AppColors.white),
                      child: ClipRRect(
                        borderRadius: Styles.borderRadiusCircular40,
                        child: petImage!.isEmpty? AppAssestsImage(
                          borderRadius: Styles.borderRadiusCircular40,
                          path:ImageResources.appLogo,
                          height: 45,
                          width: 45,
                        ):AppNetworkImage(
                          borderRadius: Styles.borderRadiusCircular40,
                          url: petImage ?? '',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ),
                  ),
                ),
              // if (!premium)
              //   Row(
              //     children: [
              //       Text(
              //         '10 Prompts Remaining',
              //         style: context.textTheme.titleSmall?.copyWith(
              //           fontWeight: FontWeight.w700,
              //           fontSize: 12,
              //           color: AppColors.stepperColor,
              //         ),
              //       ),
              //       Styles.gap6,
              //       AppTextIconButton(
              //         onPressed: () {
              //           BottomModels.needPremiumBottomSheet(context);
              //         },
              //         padding: Styles.edgeInsetsAll08,
              //         name: 'Get Premium',
              //         icon: Icons.diamond_outlined,
              //         textColor: AppColors.stepperColor,
              //         borderColor: AppColors.secondaryColor,
              //         backgroundColor: AppColors.buttonColor,
              //         radius: 20,
              //       ),
              //     ],
              //   ),
            ],
          ),

          // Styles.dividerStepper,
        ],
      ),
    );
  }
}
