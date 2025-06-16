import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/profile/presentation/pages/support/faq_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/privacy_policy_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/terms_and_condition_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../widgets/support/support_options_widget.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});
  static const routeName = '/SupportPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const SupportPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.support,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            CustomCard(
              borderColor: AppColors.transparent,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // SupportItemsWidget(
                  //   title: 'Contact',
                  //   subtitle: '+91 9897564567',
                  //   leadingIcon: ImageResources.support,
                  //   trailingIcon: Iconsax.call_calling5,
                  // ),
                  // Styles.gap10,
                  SupportItemsWidget(
                    title: 'Email',
                    subtitle: 'support@doommi.com',
                    leadingIcon: ImageResources.support,
                    trailingIcon: Iconsax.sms_tracking5,
                  ),
                ],
              ),
            ),
            Styles.gap12,
            CustomCard(
              borderColor: AppColors.transparent,
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SupportItemsWidget(
                    onPressed: (){
                      context.push(FaqPage.route());
                    },
                    subtitle: AppText.faq,
                    leadingIcon: ImageResources.faq,
                    tailingIconCover: true,
                    trailingIcon: Icons.keyboard_arrow_right,
                  ),
                  Styles.gap10,
                  SupportItemsWidget(
                    onPressed: (){
                      context.push(PrivacyPolicyPage.route());
                    },
                    subtitle: 'Privacy Policy',
                    leadingIcon: ImageResources.privacypolicy,
                    tailingIconCover: true,
                    trailingIcon: Icons.keyboard_arrow_right,
                  ),
                  Styles.gap10,
                  SupportItemsWidget(
                    onPressed: (){
                      context.push(TermsAndConditionPage.route());
                    },
                    subtitle: 'Terms & Conditions',
                    leadingIcon: ImageResources.termscondition,
                    tailingIconCover: true,
                    trailingIcon: Icons.keyboard_arrow_right,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
