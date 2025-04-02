import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/features/signup/presentation/pages/meet_your_pet_screen.dart'
    show MeetYourPetScreen;
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
      context.pushNamedAndRemoveUntil(MeetYourPetScreen.routeName);
      // context.read<AuthBloc>().add(const AuthEvent.checkUser());
      // context.read<AuthBloc>().add(const AuthEvent.storeInitialization());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const LogoBaseScreen(
      child: Center(
        child: Column(
          children: [AppAssestsImage(path: '', boxFit: BoxFit.contain)],
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
