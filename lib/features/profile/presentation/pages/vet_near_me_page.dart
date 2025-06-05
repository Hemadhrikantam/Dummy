import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:flutter/material.dart';

class VetNearMePage extends StatefulWidget {
  @override
  createState() => _VetNearMePage();
  static const routeName = '/VetNearMePage';

  const VetNearMePage({super.key});

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const VetNearMePage(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _VetNearMePage extends State<VetNearMePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero,(){

    BottomModels.clinicNearMeBottomSheet(context);
    });
  }
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
                      AppText.vetNearMe,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Styles.gap30,
              Row(
                children: [
                                  AppButton(
                  name: Text(
                    "Clincs",
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                  onPressed: () {
                  },
                ),
                                  AppButton(
                  name: Text(
                    "Clincs",
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                  onPressed: () {
                  },
                ),
                ],
              ),
              Styles.gap50,
              
            ],
          ),
        ),
      ),
    );
  }
}
