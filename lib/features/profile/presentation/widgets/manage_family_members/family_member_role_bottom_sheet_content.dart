import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class FamilyMemberRoleBottomSheetContent extends StatefulWidget {
  const FamilyMemberRoleBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  State<FamilyMemberRoleBottomSheetContent> createState() =>
      _FamilyMemberRoleBottomSheetContentState();
}

class _FamilyMemberRoleBottomSheetContentState
    extends State<FamilyMemberRoleBottomSheetContent> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Suraj S Nair',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            borderColor: index == 0 ? AppColors.stepperColor : null,
            backgroundColor:
                index == 0 ? AppColors.stepperColor.withOpacity(.1) : null,
            child: Row(
              children: [
                Text(
                  'Admin',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            borderColor: index == 1 ? AppColors.stepperColor : null,
            backgroundColor:
                index == 1 ? AppColors.stepperColor.withOpacity(.1) : null,
            child: Row(
              children: [
                Text(
                  'Collaborator',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            borderColor: index == 2 ? AppColors.stepperColor : null,
            backgroundColor:
                index == 2 ? AppColors.stepperColor.withOpacity(.1) : null,
            child: Row(
              children: [
                Text(
                  'Viewer',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
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
