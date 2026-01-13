import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/signup/presentation/bloc/register/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_text.dart';
import '../../../../core/widgets/buttons/app_button.dart';

class FounderBadgePage extends StatefulWidget {
  const FounderBadgePage({super.key});
  static const routeName = '/FounderBadgePage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const FounderBadgePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<FounderBadgePage> createState() => _FounderBadgePageState();
}

class _FounderBadgePageState extends State<FounderBadgePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: SafeArea(
        child: BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [const BackButtonWidget()]),
                Styles.gap30,
                Text(
                  AppText.welcomeFounder,
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                  ),
                ),
                Styles.gap10,
                Text(
                  AppText.becauseYouJoinedUsEarly,
                  style: context.textTheme.titleSmall?.copyWith(height: 1.4),
                ),
                Styles.gap40,
                Center(
                  child: AppAssestsImage(
                    path: ImageResources.founderBadgeImg,
                    height: 250,
                  ),
                ),
                Styles.gap30,
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₹0.00',
                            style: context.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.stepperColor,
                            ),
                          ),
                          Styles.gap8,
                          Text(
                            '₹1,499/yr',
                            style: context.textTheme.bodySmall?.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.stepperColor,
                            ),
                          ),
                        ],
                      ),
                      Styles.gap6,
                      Text(
                        AppText.validUntil,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.stepperColor,
                        ),
                      ),
                      Styles.gap4,
                      Text(
                        AppText.noCreditCardRequired,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColors.stepperColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Styles.gap50,
                AppButton(
                  name: Text(
                    AppText.claimMyFreeAccess,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                  onPressed: () {
                    context.pushNamed(DashboardPage.routeName);
                  },
                ),
                Styles.gap30,
              ],
            );
          },
        ),
      ),
    );
  }
}
