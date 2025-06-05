import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:dummy/features/signup/presentation/widgets/premium_subscription_view.dart';
import 'package:dummy/features/signup/presentation/widgets/start_30_days_free_view.dart';
import 'package:flutter/material.dart';

class PremiumSubscription extends StatefulWidget {
  @override
  createState() => _PremiumSubscription();
  static const routeName = '/PremiumSubscription';

  const PremiumSubscription({super.key});

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PremiumSubscription(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _PremiumSubscription extends State<PremiumSubscription> {

  @override
  Widget build(BuildContext context) {
    final isPremium = true;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Styles.gap50,
              Row(
                children: [
                  BackButtonWidget(),
                  Styles.gap8,
                  Expanded(
                    child: Text(
                      AppText.premiumSubscription,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Styles.gap30,
              if(isPremium)
              PremiumSubscriptionView(),
              if(!isPremium)
              Start30DaysFreeView()
            ],
          ),
        ),
      ),
    );
  }
}
