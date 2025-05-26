import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    this.image,
    this.backgroundColor,
  });
  final String title;
  final String? image;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.transparent,
      backgroundColor: backgroundColor ?? AppColors.infoCardBackgroundColor,
      borderRadius: Styles.borderRadiusCircular10,
      child: Text(
        title,
        style: GoogleFonts.instrumentSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.stepperColor,
        ),
      ),
    );
  }
}
