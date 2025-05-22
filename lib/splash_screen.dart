import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/widgets/app_assets_image.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';

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
      context.read<AuthBloc>().add(const AuthEvent.checkUser());
      // context.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
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
