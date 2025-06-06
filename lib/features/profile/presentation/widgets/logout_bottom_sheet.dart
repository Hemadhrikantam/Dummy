import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Styles.gap6,
          AppGraber(),
          Styles.gap16,
          Text(
            AppText.logout,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: AppText.logoutText,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Styles.gap20,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderColor: AppColors.grey500,
                      backgroundColor: AppColors.white,
                      textColor: AppColors.buttonTextColor,
                      radius: 50,
                      name: AppText.cancel,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.logout());
                      },
                      radius: 50,
                      borderColor: AppColors.transparent,
                      backgroundColor: AppColors.red,
                      name: AppText.logout,
                    ),
                  ),
                ],
              ),
              Styles.gap10,
            ],
          ),
        ],
      ),
    );
  }
}
