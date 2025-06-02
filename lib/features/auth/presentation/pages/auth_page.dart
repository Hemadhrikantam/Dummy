import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/enum/yourself.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/auth/presentation/widgets/options.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          Styles.gap16,
          AppAssestsImage(
            path: ImageResources.dashboardLogo,
            boxFit: BoxFit.contain,
            height: 71,
            width: 210,
          ),
          Styles.gap28,
          Text(
            AppText.introduceYourself,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Styles.gap25,
          BlocSelector<AuthBloc, AuthState, Yourself>(
            selector: (state) {
              return state.yourself;
            },
            builder: (context, state) {
              return Options(
                labels: [
                  "Pet Parent?",
                  "Looking to adopt only?",
                  "NGO or Shelter?",
                ],
                selected: "Pet Parent?",
                onSelected: (value) {
                  if (value == "Pet Parent?") {
                    context.read<AuthBloc>().add(
                      const AuthEvent.yourself(Yourself.petParent),
                    );
                  } else if (value == "Looking to adopt only?") {
                    context.read<AuthBloc>().add(
                      const AuthEvent.yourself(Yourself.lookingAdoption),
                    );
                  } else if (value == "NGO or Shelter?") {
                    context.read<AuthBloc>().add(
                      const AuthEvent.yourself(Yourself.ngo),
                    );
                  }
                },
              );
            },
          ),

          Styles.gap50,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  name: Text(
                    AppText.continueBtn,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
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
