import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/wag/presentation/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LesseningAI extends StatelessWidget {
  const LesseningAI({super.key, this.callback});
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: RiveAnimation.asset(
              ImageResources.micRive,
              artboard: 'Artboard',
              animations: ['Timeline 1'],
              fit: BoxFit.contain,
            ),
          ),
          Styles.gap6,
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall?.copyWith(
              fontSize: 13,
              color: AppColors.grey500,
            ),
          ),
          Styles.gap100,
          Styles.gap100,
          ImagesContainer(
            onTap: callback,
            path: ImageResources.cross,
            backgroundColor: AppColors.white,
            iconColor: AppColors.stepperColor,
            borderColor: AppColors.secondaryLight,
            size: 15,
          ),
        ],
      ),
    );
  }
}
