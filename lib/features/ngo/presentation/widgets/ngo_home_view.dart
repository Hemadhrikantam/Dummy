import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_info_cards.dart';
import 'package:dummy/features/ngo/presentation/widgets/recent_added_pets.dart';
import 'package:dummy/features/profile/presentation/pages/ngo_profile_options_page.dart';
import 'package:flutter/material.dart';

class NgoHomeView extends StatefulWidget {
  const NgoHomeView({super.key});

  @override
  createState() => _NgoHomeView();
}

class _NgoHomeView extends State<NgoHomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImageResources.dashboardLogo, height: 45),
              GestureDetector(
                onTap: () {
                  context.pushNamed(NgoProfileOptionsPage.routeName);
                },
                child: AppAssestsImage(
                  path: ImageResources.dog,
                  height: 45,
                  width: 45,
                ),
              ),
            ],
          ),
          Styles.gap15,
          NgoInfoCards(),
          Styles.gap15,
          RecentAddedPets(),
        ],
      ),
    );
  }
}
