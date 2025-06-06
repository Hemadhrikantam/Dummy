import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  createState() => _ProfilePage();
  static const routeName = '/ProfilePage';

  const ProfilePage({super.key});

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const ProfilePage(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Styles.gap50,
              Row(
                children: [
                  BackButtonWidget(),
                  Styles.gap8,
                  Expanded(
                    child: Text(
                      AppText.petProfile,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Styles.gap50,
              Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 354 / 527,
                    child: AppAssestsImage(
                      path: ImageResources.profileBackground,
                      boxFit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Column(
                      children: [
                        Text(
                          "Shiri",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: AppColors.stepperColor,
                          ),
                        ),
                        _ProfileImage(),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Breed",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grey700,
                                    ),
                                  ),
                                  Text(
                                    "Indie",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.stepperColor,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grey700,
                                    ),
                                  ),
                                  Text(
                                    "2 Years",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.stepperColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Styles.gap65  ,
                          AppAssestsImage(
                            path: ImageResources.dashboardLogo,
                            width: 120,
                            boxFit: BoxFit.contain,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Styles.gap30,
              AppButton(
                backgroundColor: AppColors.white,
                showShadow: false,
                name: Text(
                  AppText.edit,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                onPressed: () {
                  context.push(AddPetPage.route());
                },
              ),
              Styles.gap16,
              AppButton(
                backgroundColor: AppColors.white,
                showShadow: false,
                name: Text(
                  AppText.share,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                onPressed: () {},
              ),
              Styles.gap50,
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styles.edgeInsetsAll30,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(ImageResources.darkpaw),
        ),
      ),
      child: CircleAvatar(
        radius: 70,
        backgroundColor: AppColors.buttonBackground,
        child: AppAssestsImage(path: ImageResources.dog),
      ),
    );
  }
}
