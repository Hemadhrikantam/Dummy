import 'package:dummy/core/constent/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';

part 'account_details_fields.dart';

class AccountDetailsForm extends StatelessWidget {
  const AccountDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.edgeInsetsZero,
      children: [
        CustomCard(
          borderColor: AppColors.transparent,
          child: Stack(
            children: [
              Column(
                children: [
                  __UserName(),
                  Styles.gap10,
                  __EmailAddress(),
                  Styles.gap10,
                  __PhoneNumber(),
                  Styles.gap10,
                ],
              ),
            ],
          ),
        ),
        Styles.gap10,
        // __ForgotPassword(),
      ],
    );
  }
}
