import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/features/profile/presentation/bloc/account/account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_text.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';

part 'account_details_fields.dart';

class AccountDetailsForm extends StatelessWidget {
  const AccountDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
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
      },
    );
  }
}
