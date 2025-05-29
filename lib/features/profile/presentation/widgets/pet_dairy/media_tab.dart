import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_photo_page.dart';
import 'package:flutter/material.dart';

class MediaTab extends StatelessWidget {
  const MediaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            context.push(PetPhotoCardPage.route());
          },
          child: AppAssestsImage(
            path: ImageResources.mediaImg,
            height: 500,
            width: 356,
          ),
        ),
      ],
    );
  }
}
