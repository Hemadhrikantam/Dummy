import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/extention/app_navigation.dart';
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
      context.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
      // context.read<AuthBloc>().add(const AuthEvent.checkUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return LogoBaseScreen(
      child: Center(
        child: Column(
          children: [
            AppAssestsImage(
              path: ImageResources.splashScreen,
              boxFit: BoxFit.fill,
            ),
          ],
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