import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/meals/meals_bloc.dart';

class MealsTab extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  const MealsTab({super.key, required this.selectedPet});

  @override
  State<MealsTab> createState() => _MealsTabState();
}

DateTime? _selectedDay;

class _MealsTabState extends State<MealsTab> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<MealsBloc>().add(MealsEvent.meals(_selectedDay));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    _selectedDay = DateTime.now();
    final firstDayOfMonth = DateTime(now.year, now.month, 1);
    final nextMonth = DateTime(now.year, now.month + 1, 1);
    final totalDaysInMonth = nextMonth.difference(firstDayOfMonth).inDays;

    // Generate list of all days
    final daysInCurrentMonth = List.generate(
      totalDaysInMonth,
      (index) => DateTime(now.year, now.month, index + 1),
    );

    return RefreshIndicator.adaptive(
      color: AppColors.stepperColor,
      backgroundColor: AppColors.white,
      onRefresh: () async {
        context.read<MealsBloc>().add(MealsEvent.meals(_selectedDay));
      },
      child: ListView(
        children: [
          DaySelector(
            days: daysInCurrentMonth,
            initialDate: now,
            onDaySelected: (day) {
              setState(() {
                _selectedDay = day;
              });
              context.read<MealsBloc>().add(MealsEvent.meals(_selectedDay));
            },
          ),
          Styles.gap15,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppButton(
                name: Text(
                  AppText.add,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                width: 90,
                onPressed: () {
                  BottomModels.addMealsBottomSheet(context);
                  // _showAddMealBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap15,
          CustomCard(
            child: BlocBuilder<MealsBloc, MealsState>(
              builder: (context, state) {
                final items = state.meals;
                return state.mealsStatus.loading
                    ? LoadingWidget.circularProgressIndicatorCenter
                    : items.isEmpty
                    ? Padding(
                      padding: Styles.edgeInsetsOnlyH20,
                      child: EmptyListPage(
                        titleFontSize: 24,
                        imagePath: ImageResources.tshirt,
                        title:
                            "We don’t have ${widget.selectedPet?.petName} daily care data yet. Start logging her meals to see a summary!",
                      ),
                    )
                    : AppCustomListViewBuilder(
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      isExpand: false,
                      separatorBuilder: (context, i) => Styles.gap10,
                      itemBuilder: (context, index) {
                        final mealItem = items[index];
                        return CustomCard(
                          borderRadius: Styles.borderRadiusCircular08,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: AppAssestsImage(
                                  path: ImageResources.mealsicon,
                                  boxFit: BoxFit.cover,
                                ),
                              ),
                              Styles.gap10,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppText.meals,
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 12,
                                            color: AppColors.grey500,
                                          ),
                                    ),
                                    Text(
                                      mealItem.mealType,
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                    Padding(
                                      padding: Styles.edgeInsetsOnlyW04,
                                      child: SizedBox(
                                        child: AppNetworkImage(
                                          width: 24.0,
                                          height: 24.0,
                                          url: mealItem.media,
                                          borderRadius:
                                              Styles.borderRadiusCircular04,
                                        ),
                                      ),
                                    ),
                                    // Row(
                                    //   children:
                                    //       mealItem.imageUrls
                                    //           .map(
                                    //             (url) => Padding(
                                    //               padding:
                                    //                   Styles.edgeInsetsOnlyW04,
                                    //               child: SizedBox(
                                    //                 child: AppAssestsImage(
                                    //                   width: 24.0,
                                    //                   height: 24.0,
                                    //                   path: url,
                                    //                   borderRadius:
                                    //                       Styles
                                    //                           .borderRadiusCircular04,
                                    //                 ),
                                    //               ),
                                    //             ),
                                    //           )
                                    //           .toList(),
                                    // ),
                                  ],
                                ),
                              ),
                              Styles.gap15,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    AppUtil.formatDateToMMDDYYYY(
                                      DateTime.parse(mealItem.date),
                                    ),
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    mealItem.timeOfMeal,
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.buttonTextColor,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}
