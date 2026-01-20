import 'dart:io';

import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_profile/ngo_profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'ngo_account_details_fields.dart';

class NgoAccountDetailsForm extends StatelessWidget {
  const NgoAccountDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          __LogoFilePicker(),
          Styles.gap10,
          CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                __NgoName(),
                Styles.gap10,
                __ContactPersonName(),
                Styles.gap10,
                __EmailAddress(),
                Styles.gap10,
                __PhoneNumber(),
                Styles.gap10,
                __RegistrationProofPicker(),
                Styles.gap10,
                __Address(),
                Styles.gap10,
                __Pincode(),
                Styles.gap10,
              ],
            ),
          ),
          // Styles.gap10,
          // AppButton(
          //   onPressed: () {},
          //   name: Text(
          //     AppText.forgetPassword,
          //     style: context.textTheme.titleMedium?.copyWith(
          //       color: AppColors.buttonTextColor,
          //       fontWeight: FontWeight.w700,
          //       fontSize: 14,
          //     ),
          //   ),
          // ),
          Styles.gap30,
          Styles.gap30,
          Styles.gap30,
        ],
      ),
    );
  }
}
