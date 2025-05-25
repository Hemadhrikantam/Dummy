import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/auth/presentation/pages/auth_page.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../dashboard/presentation/pages/dashboard_page.dart';

class StartYourPetsJourney extends StatelessWidget {
  const StartYourPetsJourney({super.key});
  static const routeName = '/StartYourPetsJourney';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const StartYourPetsJourney(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LogoBaseScreen(
      bottomWidget: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: context.height * 0.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: Styles.edgeInsetsAll30,
                  child: AppSVGImage(
                    path: ImageResources.dummy,

                    height: 80,
                    // width: 60,
                  ),
                ),
                Styles.gap50,
                Styles.gap50,
                Styles.gap50,
                Styles.gap50,
                Text(
                  AppText.welcomeToDummy,
                  style: GoogleFonts.instrumentSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Styles.gap10,
                AppButton(
                  name: Text(
                    AppText.startYourPetsJourney,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    // context.pushNamedAndRemoveUntil(AuthPage.routeName);
                    context.pushNamed(StartYourPetsJourney2.routeName);
                  },
                ),
                Styles.gap20,
              ],
            ),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          AppAssestsImage(
            path: ImageResources.splashScreen,
            boxFit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class LogoBaseScreen extends StatelessWidget {
  const LogoBaseScreen({required this.child, this.bottomWidget, super.key});

  final Widget child;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: Stack(
        children: [
          Positioned.fill(child: child),
          if (bottomWidget != null)
            Positioned(bottom: 0, left: 0, right: 0, child: bottomWidget!),
        ],
      ),
    );
  }
}
