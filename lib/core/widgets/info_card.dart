import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, this.image});
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.infoCardBackgroundColor,
      borderRadius: Styles.borderRadiusCircular10,
      child: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
