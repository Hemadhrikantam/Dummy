import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class CustomSwipeButton extends StatelessWidget {
  final Future<dynamic>? Function()? onSwipe;
  final String label;

  const CustomSwipeButton({
    super.key,
    required this.onSwipe,
    this.label = "Mark as Given",
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.grey400,
      borderRadius: Styles.borderRadiusCircular50,
      padding: Styles.edgeInsetsOnlyH00,
      child: SlideAction(
        height: 50,
        elevation: 0,
        innerColor: AppColors.stepperColor,
        outerColor: AppColors.transparent,
        sliderButtonIcon: CustomCard(
          borderRadius: Styles.borderRadiusCircular50,
          padding: Styles.edgeInsetsAll12,
          backgroundColor: AppColors.stepperColor,
          child: const Icon(
            Icons.double_arrow,
            color: AppColors.white,
            size: 25,
          ),
        ),
        text: label,
        textStyle: GoogleFonts.instrumentSans(
          color: AppColors.buttonTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        onSubmit: onSwipe,
        submittedIcon: const SizedBox(),
        sliderRotate: false,
        alignment: Alignment.centerLeft,
        sliderButtonIconPadding: 0,
      ),
    );
  }
}
