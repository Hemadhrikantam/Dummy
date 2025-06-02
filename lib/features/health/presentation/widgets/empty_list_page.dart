import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class EmptyListPage extends StatelessWidget {
  const EmptyListPage({
    super.key,
    this.title,
    this.subTitle,
    this.imagePath,
    this.buttonName,
    this.onPressed,
  });
  final String? title;
  final String? subTitle;
  final String? imagePath;
  final String? buttonName;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(imagePath!=null)
          AppAssestsImage(
            path: imagePath!,
            width: 220,
            height: 180,
            boxFit: BoxFit.contain,
          ),
          Styles.gap12,
          if(title!=null)
          Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap10,
          if(subTitle!=null)
          Text(
            subTitle!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: AppColors.text,
            ),
          ),
          Styles.gap30,
          if(buttonName!=null)
          AppButton(
            onPressed: onPressed,
            name: Text(
              buttonName!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.buttonTextColor,
              ),
            ),
          ),
          Styles.gap20,
        ],
      ),
    );
  }
}
