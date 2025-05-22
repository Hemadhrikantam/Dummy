import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/auth/presentation/pages/otp_page.dart';
import 'package:dummy/features/auth/presentation/widgets/login/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/app_outlined_button.dart';
import '../../../../../core/widgets/buttons/back_button.dart';
import '../../../../dashboard/presentation/pages/dashboard_page.dart';
import '../../bloc/auth/auth_bloc.dart';
import 'email.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.welcomeBackToDummy,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.letsCreateYopurAccount,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          EmailField(),
          Styles.gap15,
          PasswordField(),
          Styles.gap50,
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.loginStatus.success) {
                context.pushNamed(DashboardPage.routeName);
              }
            },
            builder: (context, state) {
              return AppButton(
                name:
                    state.loginStatus.loading
                        ? LoadingWidget.circularProgressIndicatorCenter
                        : Text(
                          AppText.startYourPetsJourney,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                onPressed:
                    state.loginValidation
                        ? () {
                          context.read<AuthBloc>().add(AuthEvent.login());
                        }
                        : () {
                          AppAlert.showToast(
                            message: AppText.provideRequiredFields,
                          );
                        },
              );
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Text(
              AppText.dontHaveAnAccount,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {},
          ),
          AppOutlinedButton(
            borderColor: AppColors.transparent,
            backgroundColor: AppColors.transparent,
            name: Text(
              AppText.forgotPassword,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(OTPPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
