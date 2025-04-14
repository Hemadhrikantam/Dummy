import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'pet_info_page.dart';

class UploadPetPhotoPage extends StatefulWidget {
  const UploadPetPhotoPage({super.key});
  static const routeName = '/UploadPetPhotoPage';

  @override
  State<UploadPetPhotoPage> createState() => _UploadPetPhotoPageState();
}

class _UploadPetPhotoPageState extends State<UploadPetPhotoPage> {
  XFile? selectedImage;

  @override
  Widget build(BuildContext context) {
    // final isImageUploaded = selectedImage != null;

    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 2),
          Styles.gap20,
          Text(
            AppText.uploadPetPhoto,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap20,
          Text(
            AppText.showOffYourPetSmile,
            style: context.textTheme.titleSmall,
          ),
          Styles.gap30,
          GestureDetector(
            onTap: () async {
              final ImagePicker picker = ImagePicker();
              final image = await picker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                setState(() {
                  selectedImage = image;
                });
              }
            },
            child: CircleAvatar(
              radius: 100,
              backgroundColor: AppColors.buttonBackground,
              backgroundImage:
                  selectedImage != null
                      ? FileImage(File(selectedImage!.path))
                      : null,
              child:
                  selectedImage == null
                      ? Text(
                        AppText.upload,
                        style: TextStyle(
                          color: AppColors.buttonTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                      : null,
            ),
          ),
          Styles.gap20,
          if (selectedImage != null)
            Text(
              AppText.petPhotoUploadedContent, // <- Add this key in AppText
              style: context.textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(PetInfoPage.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Text(
              AppText.skip,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(PetInfoPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
