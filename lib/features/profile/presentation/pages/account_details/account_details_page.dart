import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/profile/presentation/bloc/account/account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_text.dart';
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
        child: BlocConsumer<AccountBloc, AccountState>(
          listener: (context, state) {
            if (state.editAccountStatus == Status.success) {}
          },
          builder: (context, state) {
            return state.editAccountStatus == Status.loading
                ? LoadingWidget.circularProgressIndicatorCenter
                : AppButton(
                  onPressed: () {
                    context.read<AccountBloc>().add(
                      AccountEvent.editAccountSubmit(),
                    );
                  },
                  name: Text(
                    AppText.save,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                );
          },
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 12),
        child: const AccountDetailsForm(),
      ),
    );
  }
}
