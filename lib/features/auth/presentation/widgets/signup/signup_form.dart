import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/auth/presentation/pages/login_page.dart';
import 'package:dummy/features/auth/presentation/widgets/signup/name.dart';
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
import 'confirm_password.dart';
import 'email.dart';
import 'password.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding:
            Styles.edgeInsetsAll08 +
            EdgeInsets.only(bottom: context.keyboardHeight),
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.joinDummyToday,
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
          NameField(),
          Styles.gap15,
          EmailField(),
          Styles.gap15,
          PasswordField(),
          Styles.gap15,
          ConfirmPassword(),
          Styles.gap50,
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.signupStatus.success) {
                context.pushNamed(DashboardPage.routeName);
              }
            },
            builder: (context, state) {
              return AppButton(
                name:
                    state.signupStatus.loading
                        ? LoadingWidget.circularProgressIndicatorCenter
                        : Text(
                          AppText.startYourPetsJourney,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                onPressed:
                    state.signupValidation
                        ? () {
                          if (state.password.value.trim().toLowerCase() ==
                              state.confirmPassword.value
                                  .trim()
                                  .toLowerCase()) {
                            context.read<AuthBloc>().add(AuthEvent.signup());
                          } else {
                            AppAlert.showToast(
                              message: AppText.passwordsDoesntMatch,
                            );
                          }
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
              AppText.alreadyHaveAccount,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(LoginPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
