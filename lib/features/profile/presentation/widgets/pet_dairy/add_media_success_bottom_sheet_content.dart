import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/entity_type.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/health/presentation/widgets/success_animation_wrap.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';

class AddMediaSuccessBottomSheetContent extends StatelessWidget {
  const AddMediaSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW20,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: SuccessAnimationWrap(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Styles.gap6,
              AppGraber(),
              Styles.gap16,
              AppAssestsImage(
                path: ImageResources.walkSuccess,
                height: context.height * .07,
                boxFit: BoxFit.contain,
              ),
              Text(
                AppText.youreDoingGreat,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.stepperColor,
                ),
              ),
              Styles.gap10,
              BlocBuilder<DashboardBloc, DashboardState>(
                builder: (context, state) {
                  return RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: AppText.dummyLovedHisPark,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "${state.dashboardPetDetails[0].name} for a stroll!",
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Styles.gap15,
              Row(
                children: [
                  Expanded(
                    child: BlocConsumer<PetDairyBloc, PetDairyState>(
                      listener: (context, state) {
                        if (state.addMemoryStatus.success) {
                          context.pop();
                          context.push(PetDairyPage.route());
                        }
                      },
                      builder: (context, state) {
                        return state.addMemoryStatus.loading
                            ? LoadingWidget
                                .circularProgressIndicatorWithOutRowSmall
                            : AppButton(
                              onPressed: () {
                                context.read<PetDairyBloc>().add(
                                  PetDairyEvent.addMemory(
                                    context
                                            .read<DashboardBloc>()
                                            .state
                                            .selectedPet
                                            ?.id ??
                                        '',
                                    EntityType.diary_media.name,
                                  ),
                                );
                              },
                              borderColor: AppColors.grey500,
                              backgroundColor: AppColors.white,
                              name: BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: AppText.logAMemoryOf,
                                      style: context.textTheme.titleSmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.buttonTextColor,
                                            letterSpacing: -.5,
                                            fontSize: 14,
                                          ),
                                      children: [
                                        TextSpan(
                                          text:
                                              " ${state.dashboardPetDetails[0].name}'s walk!",
                                          style: context.textTheme.titleSmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                                color:
                                                    AppColors.buttonTextColor,
                                                letterSpacing: -.5,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                      },
                    ),
                  ),
                ],
              ),
              Styles.gap10,
            ],
          ),
        ),
      ),
    );
  }
}
