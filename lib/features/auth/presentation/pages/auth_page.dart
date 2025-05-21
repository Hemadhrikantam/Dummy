import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/auth/presentation/widgets/options.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy1_page.dart';
import 'package:dummy/features/signup/presentation/pages/pet_selection_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  static const routeName = '/AuthPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AuthPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _AuthPage();
}

class _AuthPage extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppAssestsImage(
            path: ImageResources.dashboardLogo,
            boxFit: BoxFit.contain,
            height: 100,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          Text(
            AppText.introduceYourself,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          Styles.gap10,
          Options(
            labels: [
              "Pet Parent?",
              "Looking to adopt only?",
              "NGO or Shelter?",
            ],
          ),

          Styles.gap10,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  name: Text(
                    AppText.continueBtn,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    context.pushNamed(JoinDummy1Page.routeName);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
