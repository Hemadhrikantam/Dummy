import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/services/share_service.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return Column(
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
                  _ProfileCard(state: state),
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
                      context.push(AddPetPage.route(id: state.selectedPet?.id));
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
                    onPressed: () {
                      ShareService.shareWidgetAsImage(
                        context,
                        _ProfileCard(state: state),
                      );
                    },
                  ),
                  Styles.gap50,
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.state});
  final DashboardState state;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                state.selectedPet?.petName ?? "",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: AppColors.stepperColor,
                ),
              ),
              _ProfileImage(state.selectedPet?.petImage.petImage ?? ""),
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
                    Flexible(
                      child: Column(
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
                            state.selectedPet?.breed.breed ?? "",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColors.stepperColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
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
                            "${DateTime.now().difference(DateTime.parse(state.selectedPet?.dob ?? "")).inDays ~/ 365} Years",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColors.stepperColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Styles.gap65,
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
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage(this.url);
  final String url;
  @override
  Widget build(BuildContext context) {
    if (url.isNotEmpty) {
      return Container(
        padding: Styles.edgeInsetsAll12,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(ImageResources.darkpaw),
          ),
        ),
        child: CircleAvatar(
          radius: 90,
          backgroundColor: AppColors.buttonBackground,
          child: ClipRRect(
            borderRadius: Styles.borderRadiusCircular200,
            child: AppNetworkImage(url: url, width: 180, height: 180),
          ),
        ),
      );
    } else {
      return Container(
        padding: Styles.edgeInsetsAll12,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(ImageResources.darkpaw),
          ),
        ),
        child: CircleAvatar(
          radius: 90,
          backgroundColor: AppColors.buttonBackground,
          child: AppAssestsImage(path: ImageResources.dog),
        ),
      );
    }
  }
}
