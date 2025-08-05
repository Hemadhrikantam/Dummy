import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/success_animation_wrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class VaccinationSuccessContent extends StatelessWidget {
  const VaccinationSuccessContent({
    super.key,
    required this.vaccinationName,
    required this.companyName,
    required this.dueDate,
    required this.dateAdministered,
  });
  final String vaccinationName;
  final String companyName;
  final DateTime dueDate;
  final DateTime dateAdministered;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SuccessAnimationWrap(
          child: CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppAssestsImage(
                  path: ImageResources.medsIcon,
                  height: context.height * .1,
                  boxFit: BoxFit.contain,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppText.greatJobKeeping,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.stepperColor,
                    ),
                    children: [
                      TextSpan(
                        text: "${context.read<DashboardBloc>().state.petName} ",
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.stepperColor,
                        ),
                      ),
                      TextSpan(
                        text: AppText.healthy,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.stepperColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Styles.gap40,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${vaccinationName}  ',
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColors.stepperColor,
                          ),
                        ),
                        Text(
                          '$companyName',
                          style: context.textTheme.labelMedium?.copyWith(
                            color: AppColors.stepperColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Styles.gap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.dateAdministered,
                          style: context.textTheme.labelLarge?.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        Text(
                          AppUtil.formatDate(dateAdministered),
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.duedate,
                          style: context.textTheme.labelLarge?.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        Text(
                          AppUtil.formatDate(dueDate),
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Styles.gap30,
                AppButton(
                  onPressed: () {
                    context.pop();
                  },
                  name: Center(
                    child: Text(
                      AppText.goToVaccination,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Styles.gap10,
                Row(
                  children: [
                    Expanded(
                      child: AppTextButton(
                        onPressed: () {
                          context.pop();
                        },
                        backgroundColor: AppColors.white,
                        name: AppText.home,
                        borderColor: AppColors.grey500,
                        textColor: AppColors.buttonTextColor,
                      ),
                    ),
                  ],
                ),
                Styles.gap20,
              ],
            ),
          ),
        ),
        Styles.gap20,
        CustomCard(
          backgroundColor: AppColors.buttonBackground.withOpacity(.6),
          border: Border.all(color: Colors.transparent),
          child: Row(
            children: [
              AppAssestsImage(
                path: ImageResources.medsIcon,
                height: context.height * .05,
                width: context.height * .05,
                boxFit: BoxFit.contain,
              ),
              Styles.gap10,
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppText.dummyWouldBeProudOfYouForKeeping,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.buttonTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: "${context.read<DashboardBloc>().state.petName} ",
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                      TextSpan(
                        text: AppText.healthy,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
