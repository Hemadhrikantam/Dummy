import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PetTypeSelectionCard extends StatelessWidget {
  const PetTypeSelectionCard({
    super.key,
    required this.name,
     this.borderColor, this.onTap, this.textColor,
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
        borderColor: borderColor?? AppColors.grey350,
        border: Border.all(width: 1.5, color: borderColor?? AppColors.grey350),
        onTap: onTap,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color:textColor?? AppColors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
