import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/custom_bottom_sheet.dart';
import '../../widgets/account_details/account_details_form.dart';

class AccountDetailsPage extends StatelessWidget {
  const AccountDetailsPage({super.key});
  static const routeName = '/AccountDetailsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AccountDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.accountDetails,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      bottom: CustomBottomSheet(
        child: AppButton(
          onPressed: () {
            context.pop();
          },
          name: Text(
            AppText.save,
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.buttonTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: const AccountDetailsForm(),
      ),
    );
  }
}
