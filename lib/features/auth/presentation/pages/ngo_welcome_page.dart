import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:dummy/core/widgets/phone_text_field.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/ngo/presentation/pages/ngo_home_page.dart';
import 'package:dummy/features/signup/presentation/pages/welcome_to_dummy_page.dart';
import 'package:flutter/material.dart';

class NgoWelcomePage extends StatefulWidget {
  const NgoWelcomePage({super.key});
  static const routeName = '/NgoWelcomePage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NgoWelcomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _NgoWelcomePage();
}

class _NgoWelcomePage extends State<NgoWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.welcomeToDummyPag,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.empoweringSheltersToConnect,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          TickTile(title: AppText.effortlessPetListingManagement),
          Styles.gap10,
          TickTile(title: AppText.streamlinedAdoptionRequests),
          Styles.gap10,
          TickTile(title: AppText.verifiedPetProfileswithHealth),
          Styles.gap10,
          TickTile(title: AppText.shelterDashboardInsights),
          Styles.gap10,
          TickTile(title: AppText.premiumExposureFasterAdoptions),
          Styles.gap50,
          AppButton(
            name: Text(
              AppText.startUsingDummy,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushAndRemoveUntil(NgoHomePage.route());
            },
          ),
          Styles.gap50,
        ],
      ),
    );
  }
}

class TickTile extends StatelessWidget {
  const TickTile({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderRadius: Styles.borderRadiusCircular08,
      child: Row(
        children: [
          CustomCard(
            borderRadius: Styles.borderRadiusCircular25,
            padding: Styles.edgeInsetsAll02,
            backgroundColor: AppColors.stepperColor,
            child: Icon(Icons.check, size: 22, color: AppColors.white),
          ),
          Styles.gap10,
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
