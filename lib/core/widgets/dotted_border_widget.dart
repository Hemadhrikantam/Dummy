import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
class DottedBorderWidget extends StatefulWidget {
  const DottedBorderWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  State<StatefulWidget> createState() => _DottedBorderWidget();
}

class _DottedBorderWidget extends State<DottedBorderWidget> {
  List<XFile> selectedImages = [];

  get path => null;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () async {
            final ImagePicker picker = ImagePicker();
            final image = await picker.pickImage(source: ImageSource.gallery);
            if (image != null) {
              setState(() {
                selectedImages.add(image);
              });
            }
          },
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              color: AppColors.stepperColor,
              strokeWidth: 1.5,
              radius: Styles.radiusCircular08,
              dashPattern: [6, 3],
            ),
            child: Container(
              padding: Styles.edgeInsetsAll25,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Iconsax.gallery_add,
                    color: AppColors.stepperColor,
                  ),
                  Styles.gap6,
                  Text(
                    AppText.tapHereToAddMedia,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.stepperColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Styles.gap10,
        if (selectedImages.isNotEmpty)
          ...selectedImages.map((i) {
            return Container(
              margin: Styles.edgeInsetsOnlyH04,
              padding: Styles.edgeInsetsAll04,
              decoration: BoxDecoration(
                borderRadius: Styles.borderRadiusCircular08,
                border: Border.all(width: 1, color: AppColors.grey400),
              ),
              child: Row(
                children: [
                  Image.file(File(i.path), height: 40, width: 40),
                  Styles.gap10,
                  Expanded(
                    child: Text(
                      i.path.split('/').last,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.grey600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImages.remove(i);
                      });
                    },
                    child: AppAssestsImage(
                      path: ImageResources.delete,
                      height: 27,
                      width: 27,
                    ),
                  ),
                  Styles.gap4,
                ],
              ),
            );
          }).toList(),
      ],
    );
  }
}
