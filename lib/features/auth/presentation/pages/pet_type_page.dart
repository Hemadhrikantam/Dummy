import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/yourself.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/auth/presentation/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetTypePage extends StatefulWidget {
  const PetTypePage({super.key});
  static const routeName = '/AuthPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetTypePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _PetTypePage();
}

class _PetTypePage extends State<PetTypePage> {
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
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return AppButton(
                                  name: Text(
                                    AppText.continueBtn,
                                    style: context.textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.buttonTextColor,
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<AuthBloc>().add(AuthEvent.registerUser(state.phone.value??'', state.yourself.name));
                                  },
                                );
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
