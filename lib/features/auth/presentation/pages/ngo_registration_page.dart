import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/core/widgets/phone_text_field.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dummy/features/auth/presentation/bloc/ngo_registration/ngo_registration_bloc.dart';

import '../../../../core/widgets/loading_widget.dart';
part '../widgets/ngo_registration_fields.dart';
part 'ngo_registration_page2.dart';

class NgoRegistrationPage extends StatefulWidget {
  const NgoRegistrationPage({super.key});
  static const routeName = '/NgoRegistrationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NgoRegistrationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _NgoRegistrationPage();
}

class _NgoRegistrationPage extends State<NgoRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
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
            AppText.letsCreateYourNgoAccount,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          __NgoName(),
          Styles.gap15,
          __ContactName(),
          Styles.gap15,
          __EmailAddress(),
          Styles.gap15,
          __Phone(),
          Styles.gap50,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(NgoRegistrationPage2.routeName);
            },
          ),
          Styles.gap50,
        ],
      ),
    );
  }
}
