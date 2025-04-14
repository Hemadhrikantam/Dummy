import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import '../constent/styles.dart';
import '../utils/image_utility.dart';
import 'buttons/app_icon_button.dart';
import 'custom_card.dart';

class ImagePickerContainer<T> extends StatelessWidget {
  const ImagePickerContainer({
    super.key,
    this.onPressedCamera,
    this.onPressedGallery,
    this.preferredCameraDevice = CameraDevice.rear,
  });
  final T? Function()? onPressedCamera;
  final T? Function()? onPressedGallery;
  final CameraDevice preferredCameraDevice;
  final ImageUtilityServiceImpl imagePicker = const ImageUtilityServiceImpl();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: Styles.edgeInsetsAll15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upload Media',
                  style: context.textTheme.titleMedium,
                ),
                AppIconButton(
                  icon: Icons.close,
                  borderColor: AppColors.transparent,
                  backgroundColor: AppColors.transparent,
                  iconColor: AppColors.grey500,
                  size: 25,
                  onPressed: () {
                    context.pop();
                  },
                )
              ],
            ),
            Styles.gap20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UploadImageIconWidget(
                  title: 'Camera',
                  icon: Iconsax.camera,
                  onPressed: onPressedCamera ??
                      () async {
                        await imagePicker
                            .pickImageFromCamera(
                                preferredCameraDevice: preferredCameraDevice)
                            .then((result) {
                          context.pop(object: result);
                        });
                      },
                ),
                Styles.gap15,
                UploadImageIconWidget(
                  title: 'Gallery',
                  icon: Iconsax.gallery,
                  onPressed: onPressedGallery ??
                      () async {
                        await imagePicker
                            .pickImageFromGallery(
                                preferredCameraDevice: preferredCameraDevice)
                            .then((result) {
                          context.pop(object: result);
                        });
                      },
                ),
              ],
            ),
            Styles.sizedBoxH15,
          ],
        ),
      ),
    );
  }
}

class UploadImageIconWidget extends StatelessWidget {
  const UploadImageIconWidget(
      {required this.title, required this.icon, super.key, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomCard(
        onTap: onPressed,
        borderRadius: Styles.borderRadiusCircular04,
        padding: Styles.edgeInsetsAll18,
        backgroundColor: AppColors.transparent,
        borderColor: AppColors.grey500,
        child: Column(
          children: [
            Icon(
              icon,
              color: context.themeData.primaryColor,
              size: 25,
            ),
            Text(
              title,
              style: context.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
