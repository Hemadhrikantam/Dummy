import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
// import 'package:dummy/features/ngo/presentation/pages/ngo_home_page.dart';
// import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey.dart';
import 'package:flutter/material.dart';

import 'core/widgets/app_assets_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // context.read<AuthBloc>().add(const AuthEvent.checkUser());
      context.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName); //Real
      // context.pushNamedAndRemoveUntil(AdoptionDashboardPage.routeName); // testing one
      // context.pushNamedAndRemoveUntil(DashboardPage.routeName); // testing one
      // context.pushNamedAndRemoveUntil(NgoHomePage.routeName); // testing one
      // context.read<AuthBloc>().add(const AuthEvent.checkUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageResources.splashScreen),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Center(
            child: Padding(
              padding: Styles.edgeInsetsAll30,
              child: AppSVGImage(
                path: ImageResources.dummy,
                boxFit: BoxFit.contain,
                height: 110,
                width: 320,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoBaseScreen extends StatelessWidget {
  const LogoBaseScreen({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: Stack(alignment: Alignment.bottomCenter, children: [child]),
    );
  }
}
