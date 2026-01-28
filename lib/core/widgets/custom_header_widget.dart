import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/home/presentation/pages/notification_page.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart'
    show ProfileOptionsPage;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_card.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key, this.petImage, this.onProfileTap});
  final String? petImage;
  final VoidCallback? onProfileTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
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
                        height: 35,
                        width: 35,
                        boxFit: BoxFit.contain,
                      ),
                      Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
                Styles.gap10,
                GestureDetector(
                  onTap: () {
                    if (onProfileTap == null) {
                      context.pushNamed(ProfileOptionsPage.routeName);
                    } else {
                      onProfileTap?.call();
                    }
                  },
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: CustomCard(
                      padding: Styles.edgeInsetsAll02,
                      borderRadius: Styles.borderRadiusCircular40,
                      border: Border.all(width: 2, color: AppColors.white),
                      child: ClipRRect(
                        borderRadius: Styles.borderRadiusCircular40,
                        child: petImage!.isEmpty? AppAssestsImage(
                          borderRadius: Styles.borderRadiusCircular40,
                          path:ImageResources.appLogo,
                          height: 45,
                          width: 45,
                        ):AppNetworkImage(
                          borderRadius: Styles.borderRadiusCircular40,
                          url: petImage ?? '',
                          height: 45,
                          width: 45,
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
