import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/widgets/custom_card.dart';
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
      child: ListView(
        padding: Styles.edgeInsetsOnlyT20,
        children: [
          CustomCard(
            borderColor: AppColors.transparent,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SupportItemsWidget(
                  title: 'Contact',
                  subtitle: '+91 9897564567',
                  leadingIcon: ImageResources.support,
                  trailingIcon: Iconsax.call_calling5,
                ),
                Styles.gap10,
                SupportItemsWidget(
                  title: 'Email',
                  subtitle: 'sparrow@gmail.com',
                  leadingIcon: ImageResources.support,
                  trailingIcon: Iconsax.sms_tracking5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
