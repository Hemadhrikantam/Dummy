import 'dart:async';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/close_button_widget.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
//import 'package:dummy/features/signup/presentation/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/timer_widget.dart';

class DummyTimerPage extends StatefulWidget {
  const DummyTimerPage({super.key});
  static const routeName = '/DummyTimerPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const DummyTimerPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<DummyTimerPage> createState() => _DummyTimerPageState();
}

class _DummyTimerPageState extends State<DummyTimerPage> {
  Duration _remainingTime = const Duration(hours: 1);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime.inSeconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          _remainingTime -= const Duration(seconds: 1);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get minutes =>
      _remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0');
  String get seconds =>
      _remainingTime.inSeconds.remainder(60).toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [CloseButtonWidget()],
          ),
          Styles.gap30,
          const __OfferText(),
          Styles.gap20,
          Text(
            AppText.withDummyPremium,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.grey600,
            ),
            textAlign: TextAlign.center,
          ),
          Styles.gap100,
          TimerWidget(minutes: minutes, seconds: seconds),
          Text(
            AppText.availableFor1hr,
            style: context.textTheme.labelMedium?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          Styles.gap50,
          __PriceWithOfferText(),
          Styles.gap10,
          AppButton(
            name: Text(
              AppText.startYourPetsJourney,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamedAndRemoveUntil(DashboardPage.routeName);
            },
          ),
          Styles.gap15,
          PlanInfoWidget(title: AppText.then),
          Styles.gap50,
          Styles.gap10,
        ],
      ),
    );
  }
}

class __OfferText extends StatelessWidget {
  const __OfferText();

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.textTheme.titleLarge?.copyWith(
          fontSize: 28,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(text: AppText.get),
          TextSpan(
            text: AppText.fiftyPercent,
            style: GoogleFonts.instrumentSans(
              color: AppColors.stepperColor,
              fontSize: 35,
            ),
          ),
          TextSpan(text: AppText.dummyPremium),
        ],
      ),
    );
  }
}

class __PriceWithOfferText extends StatelessWidget {
  const __PriceWithOfferText();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$59.99',
          style: context.textTheme.titleMedium?.copyWith(
            decoration: TextDecoration.lineThrough,
            color: AppColors.stepperColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Styles.gap8,
        Text(
          '\$29.99',
          style: context.textTheme.titleMedium?.copyWith(
            color: AppColors.stepperColor,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        Styles.gap8,
        Text(
          'for first year',
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.stepperColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
