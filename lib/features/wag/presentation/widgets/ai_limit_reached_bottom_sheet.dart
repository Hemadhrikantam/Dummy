import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:flutter/material.dart';

class AiLimitReachedBottomSheet extends StatelessWidget {
  const AiLimitReachedBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Styles.edgeInsetsAll20,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppGraber(),
          Styles.gap12,
          Image.asset(ImageResources.dashboardLogo, height: 45),
          Styles.gap20,
          Text(
            'Wag AI needs a catnap! 😴',
            textAlign: TextAlign.center,
            style: GoogleFonts.instrumentSans(
              color: AppColors.text,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Styles.gap12,
          Text(
            "Wow, you've been busy! You've hit your daily limit of 25 prompts. Wag AI needs a little rest to recharge its brain cells.",
            textAlign: TextAlign.center,
            style: GoogleFonts.instrumentSans(
              color: AppColors.grey600,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Styles.gap20,
          Text(
            'Your limit will reset automatically at 12:00 AM.',
            textAlign: TextAlign.center,
            style: GoogleFonts.instrumentSans(
              color: AppColors.darkOrange,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          Styles.gap20,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonBackground,
                foregroundColor: AppColors.buttonTextColor,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: Styles.borderRadiusCircular25,
                ),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImageResources.pawIcon,
                    height: 20,
                    color: AppColors.buttonTextColor,
                  ),
                  Styles.gap8,
                  Text(
                    'Okay, let him sleep',
                    style: GoogleFonts.instrumentSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
