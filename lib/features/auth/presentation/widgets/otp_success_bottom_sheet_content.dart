import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../core/widgets/app_graber.dart';

class OtpSuccessBottomSheetContent extends StatelessWidget {
  const OtpSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsZero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Styles.gap6,
          AppGraber(),
          Styles.gap16,
          AppAssestsImage(
            path: ImageResources.success,
            boxFit: BoxFit.contain,
          width: 85,
          height: 85,),
          Styles.gap20,
          Text(
            AppText.verificationSuccessful,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff190134),
            ),
          ),
          Styles.gap30,
        ],
      ),
    );
  }
}
