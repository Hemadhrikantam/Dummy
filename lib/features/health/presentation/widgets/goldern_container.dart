import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';

class GoldernContainer extends StatelessWidget {
  const GoldernContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: Styles.borderRadiusCircular25,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1751, 0.5754, 1.0],
          colors: [
            AppColors.buttonBackground,
            Color(0xFFD29949),
            Color(0xFF997035),
          ],
        ),
      ),
      padding: Styles.edgeInsetsAll04,
      child: child,
    );
  }
}
