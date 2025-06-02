import 'package:dummy/core/constent/app_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/base_screen.dart';

class PetFavPage extends StatelessWidget {
  const PetFavPage({super.key});
  static const routeName = '/PetFavPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetFavPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.favourites,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      child: ListView(
        children: [
          AppAssestsImage(
            path: ImageResources.mediaImg,
            height: 500,
            width: 356,
          ),
        ],
      ),
    );
  }
}
