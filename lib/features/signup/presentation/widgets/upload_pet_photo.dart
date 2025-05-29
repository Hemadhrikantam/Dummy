import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_type_selection_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UploadPetPhoto extends StatefulWidget {
  const UploadPetPhoto({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _UploadPetPhotoState();
}

class _UploadPetPhotoState extends State<UploadPetPhoto> {
  XFile? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppText.uploadPetPhoto,
          style: context.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: 28,
          ),
        ),
        Styles.gap20,
        Text(AppText.showOffYourPetSmile, style: context.textTheme.titleSmall),
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
                    ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppIcon(
                          icon: Icons.photo_camera_rounded,
                          color: AppColors.buttonTextColor,
                          size: 35,
                        ),
                        Text(
                          AppText.upload,
                          style: GoogleFonts.instrumentSans(
                            color: AppColors.buttonTextColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                    : null,
          ),
        ),
        Styles.gap20,
        if (selectedImage != null)
          Text(
            AppText.petPhotoUploadedContent,
            style: context.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        Styles.gap30,
        AppButton(
          name: Text(
            AppText.continueBtn,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 14,
              color: AppColors.buttonTextColor,
            ),
          ),
          onPressed: () {
            widget.onNext?.call();
          },
        ),
        Styles.gap15,
        AppOutlinedButton(
          name: Text(
            AppText.changePhoto,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.buttonTextColor,
            ),
          ),
          onPressed: () {
            widget.onNext?.call();
          },
        ),
        Styles.gap30,
        InfoCard(title: AppText.dummyLovedHisPhoto),
      ],
    );
  }
}
