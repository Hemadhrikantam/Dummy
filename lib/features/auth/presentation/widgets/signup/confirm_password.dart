import 'package:dummy/core/constent/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/models/formz/password.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/app_icon.dart';
import '../../bloc/auth/auth_bloc.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool isEyeOpen = true;
  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthBloc, AuthState, Password>(
      selector: (state) {
        return state.confirmPassword;
      },
      builder: (context, state) {
        return AppTextFormField(
          hintText: AppText.enter,
          obscureText: isEyeOpen,
          isMandatory: true,
          headerText: AppText.confirmPassword,
          suffix: AppIcon(
            onTap: () {
              setState(() {
                isEyeOpen = !isEyeOpen;
              });
            },
            icon: isEyeOpen ? Iconsax.eye_slash : Iconsax.eye,
            color: AppColors.primaryColor,
          ),
          onChanged: (value) {
            context.read<AuthBloc>().add(AuthEvent.confirmPassword(value));
          },
          errorText:
              !state.isPure && state.value != ''
                  ? AppUtil.buildPasswordError(Password.dirty(state.value))
                  : null,
        );
      },
    );
  }
}
