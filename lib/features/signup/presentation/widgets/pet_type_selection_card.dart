import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetTypeSelectionCard extends StatelessWidget {
  const PetTypeSelectionCard({
    super.key,
    required this.name,
    this.borderColor,
    this.onTap,
    this.textColor,
  });
  final String name;
  final Color? textColor;
  final Color? borderColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomCard(
        padding: Styles.edgeInsetsAll35,
        borderColor: borderColor ?? AppColors.black.withOpacity(.1),
        border: Border.all(
          width: 1,
          color: borderColor ?? AppColors.black.withOpacity(.1),
        ),
        onTap: onTap,
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.instrumentSans(
              color: textColor ?? AppColors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
