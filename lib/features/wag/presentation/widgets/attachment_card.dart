import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll10,
      child: Card(
        elevation: 0,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: AppColors.grey, width: 1.5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconDetails(iconName: 'Camera', path: ImageResources.camera),
            IconDetails(
              iconName: 'Attachment',
              path: ImageResources.attachment,
            ),
          ],
        ),
      ),
    );
  }
}

class IconDetails extends StatelessWidget {
  const IconDetails({super.key, required this.iconName, required this.path});
  final String iconName;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll10,
      child: Column(
        children: [
          AppSVGImage(path: path),
          Styles.gap6,
          Text(
            iconName,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
