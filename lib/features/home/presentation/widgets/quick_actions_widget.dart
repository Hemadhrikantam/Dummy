import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dailycare/presentation/bloc/overview/overview_bloc.dart';

class QuickActionsWidget extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  final String selectedPetId;
  const QuickActionsWidget({
    super.key,
    required this.selectedPet,
    required this.selectedPetId,
  });

  @override
  State<QuickActionsWidget> createState() => _QuickActionsWidgetState();
}

class _QuickActionsWidgetState extends State<QuickActionsWidget> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      context.read<OverviewBloc>().add(
        OverviewEvent.overview(widget.selectedPetId),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.background,
      borderColor: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.quickActions,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Styles.gap10,
          Row(
            children: [
              __ActionItem(
                image: ImageResources.logMeals,
                title: AppText.logMeals,
                onTap: () {
                  context.pushNamed(
                    DailycarePage.routeName,
                    arguments: {
                      'selectedPet': widget.selectedPet,
                      'initialTab': 'Meals',
                      'selectedPetId': widget.selectedPetId,
                    },
                  );
                },
              ),
              Styles.gap8,
              __ActionItem(
                image: ImageResources.logVaccin,
                title: AppText.logVaccin,
                onTap: () {
                  context.pushNamed(
                    HealthPage.routeName,
                    arguments: {
                      'selectedPet': widget.selectedPet,
                      'initialTab': 'Vaccination',
                      'selectedPetId': widget.selectedPetId,
                    },
                  );
                },
              ),
              Styles.gap8,

              __ActionItem(
                image: ImageResources.logWalks,
                title: AppText.logWalks,
                onTap: () {
                  context.pushNamed(
                    DailycarePage.routeName,
                    arguments: {
                      'selectedPet': widget.selectedPet,
                      'initialTab': 'Walks',
                      'selectedPetId': widget.selectedPetId,
                    },
                  );
                },
              ),
            ],
          ),
          Styles.gap8,
          Row(
            children: [
              //FOR PREMIUM
              __ActionItem(
                image: ImageResources.checkMood,
                title: AppText.checkMood,
              ),
              Styles.gap8,
              __ActionItem(
                image: ImageResources.symptoms,
                title: AppText.symptoms,
              ),
              // __ActionItem(
              //   image: ImageResources.medication,
              //   title: AppText.medications,
              // ),
              // Styles.gap8,
              // __ActionItem(
              //   image: ImageResources.expenses,
              //   title: AppText.expenses,
              // ),
              Styles.gap8,
              __ActionItem(
                onTap: () {
                  context.push(PetDairyPage.route());
                },
                image: ImageResources.addMemories,
                title: AppText.addMemories,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class __ActionItem extends StatelessWidget {
  const __ActionItem({required this.image, required this.title, this.onTap});
  final String image;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: CustomCard(
          backgroundColor: AppColors.white,
          child: Padding(
            padding: Styles.edgeInsetsOnlyH04,
            child: Column(
              children: [
                AppAssestsImage(path: image, height: 57, width: 57),
                Styles.gap10,
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: AppColors.stepperColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
