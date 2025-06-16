import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/home/presentation/pages/notification_page.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart'
    show ProfileOptionsPage;
import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageResources.dashboardLogo, height: 45),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(NotificationPage.routeName);
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  AppAssestsImage(
                    path: ImageResources.bell,
                    height: 30,
                    width: 30,
                    boxFit: BoxFit.contain,
                  ),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                    color: AppColors.red,
                    shape: BoxShape.circle
                  ),)
                ],
              ),
            ),
            Styles.gap10,
            GestureDetector(
              onTap: () {
                context.pushNamed(ProfileOptionsPage.routeName);
              },
              child: AppAssestsImage(
                path: ImageResources.dog,
                height: 45,
                width: 45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
