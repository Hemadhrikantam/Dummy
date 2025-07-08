import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/home/presentation/pages/notification_page.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart'
    show ProfileOptionsPage;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key,  this.petImage});
final String? petImage;
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
                    context.pushNamed(ProfileOptionsPage.routeName);
                  },
                  child: AppNetworkImage(
                    borderRadius: Styles.borderRadiusCircular25,
                    url: petImage??'',
                    height: 45,
                    width: 45,
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
