import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_icon.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../addoption/presentation/widgets/adoption_card.dart';

class ManageFamilyMembersBottomSheetContent extends StatelessWidget {
  const ManageFamilyMembersBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppText.members,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              BottomModels.familyMemberRoleBottomSheet(context);
            },
            child: Row(
              children: [
                TextValueWidget(text: 'Admin', value: 'Suraj S Nair'),
                Styles.spacer,
                AppIcon(icon: Iconsax.edit_25, color: AppColors.grey600),
                Styles.gap10,
                AppIcon(icon: Iconsax.trush_square, color: AppColors.red),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              BottomModels.familyMemberRoleBottomSheet(context);
            },
            child: Row(
              children: [
                TextValueWidget(text: 'Admin', value: 'Suraj S Nair'),
                Styles.spacer,
                AppIcon(icon: Iconsax.edit_25, color: AppColors.grey600),
                Styles.gap10,
                AppIcon(icon: Iconsax.trush_square, color: AppColors.red),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              BottomModels.familyMemberRoleBottomSheet(context);
            },
            child: Row(
              children: [
                TextValueWidget(text: 'Admin', value: 'Suraj S Nair'),
                Styles.spacer,
                AppIcon(icon: Iconsax.edit_25, color: AppColors.grey600),
                Styles.gap10,
                AppIcon(icon: Iconsax.trush_square, color: AppColors.red),
              ],
            ),
          ),
          Styles.gap30,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        context.pop();
                      },
                      radius: 50,
                      borderColor: AppColors.transparent,
                      backgroundColor: AppColors.buttonBackground,
                      name: AppText.save,
                      textColor: AppColors.buttonTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
