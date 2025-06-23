import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/buttons/app_text_icon_button.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    bool premium =true;
    return Padding(
      padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyW10,
      child: Column(
        children: [
          Row(
            children: [
              AppIcon(
                onTap: () {
                  context.pop();
                },
                icon: Icons.arrow_back_ios,
                color: AppColors.black,
              ),
              Spacer(),
              if(!premium)
              Row(
                children: [
                  Text(
                    '10 Prompts Remaining',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: AppColors.stepperColor,
                    ),
                  ),
                  Styles.gap6,
                  AppTextIconButton(
                    onPressed: () {
                      BottomModels.needPremiumBottomSheet(context);
                    },
                    padding: Styles.edgeInsetsAll08,
                    name: 'Get Premium',
                    icon: Icons.diamond_outlined,
                    textColor: AppColors.stepperColor,
                    borderColor: AppColors.secondaryColor,
                    backgroundColor: AppColors.buttonColor,
                    radius: 20,
                  ),
                ],
              ),
            ],
          ),

          Styles.dividerStepper,
        ],
      ),
    );
  }
}
