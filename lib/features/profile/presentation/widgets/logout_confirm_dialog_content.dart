import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_icon.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/app_text.dart';
import '../../../../core/constent/styles.dart';
import '../../../auth/presentation/bloc/auth/auth_bloc.dart';

class LogoutConfirmDialogContent extends StatelessWidget {
  const LogoutConfirmDialogContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppText.confirmLogout, style: context.textTheme.labelMedium),
              AppIcon(
                onTap: () {
                  Navigator.of(context).pop();
                },
                icon: Icons.close,
                color: AppColors.dark,
                size: 20,
              ),
            ],
          ),
          Styles.gap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.areYouSureYouWantToLogout,
                style: context.textTheme.titleSmall,
              ),
              Styles.gap20,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      backgroundColor: AppColors.white,
                      name: AppText.no,
                      textColor: AppColors.buttonTextColor,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.logout());
                      },
                      backgroundColor: AppColors.buttonBackground,
                      name: AppText.yes,
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
