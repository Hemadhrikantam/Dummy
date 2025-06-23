import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_graber.dart';

class NeedPremiumBottomSheet extends StatefulWidget {
  const NeedPremiumBottomSheet({super.key});

  @override
  State<NeedPremiumBottomSheet> createState() => _NeedPremiumBottomSheet();
}

class _NeedPremiumBottomSheet extends State<NeedPremiumBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.80,
      minChildSize: 0.35,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            Styles.gap6,
            AppGraber(),
            Styles.gap16,

            AppAssestsImage(
              path: ImageResources.dashboardLogo,
              height: 45,
              width: 50,
              boxFit: BoxFit.contain,
            ),
            Styles.gap16,
            // Title
            const Text(
              'Join Dummy Premium',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),

            // Subtitle
            const Text(
              'You’re 30 seconds away from unlocking your pet’s full wellness journey.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF8B572A),
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Orange rounded box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFE0B2), Color(0xFFFFB74D)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFCC7A00)),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '“',
                      style: TextStyle(
                        fontSize: 48,
                        color: Color(0xFF884E10),
                        height: 0.5,
                      ),
                    ),
                  ),
                  Text(
                    'Unlock smart pet care, meal logs, health tracking, and more — available after adoption!',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.stepperColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Styles.gap25,

            // Button
            AppButton(
              onPressed: () {
                // Navigate or do something
              },
              name: const Text(
                'Start Your Pets Journey',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.buttonTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Dog Image (replace with actual asset if you have it)
            Padding(
              padding: Styles.edgeInsetsZero,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AppAssestsImage(
                  path: ImageResources.sadDog,
                  height: 220,
                  boxFit: BoxFit.contain,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
