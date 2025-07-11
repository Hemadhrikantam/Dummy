import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_utils.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../health/presentation/widgets/empty_list_page.dart';
import '../bloc/dewormings/dewormings_bloc.dart';

class DewormingTab extends StatefulWidget {
  final DashboardPetDetails selectedPet;
  const DewormingTab({super.key, required this.selectedPet});

  @override
  State<DewormingTab> createState() => _DewormingTabState();
}

DateTime? _selectedDay;

class _DewormingTabState extends State<DewormingTab> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<DewormingsBloc>().add(
        DewormingsEvent.dewormings(_selectedDay),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    _selectedDay = DateTime.now();
    final nextFiveDays = List.generate(
      6,
      (index) => now.add(Duration(days: index)),
    );

    return RefreshIndicator.adaptive(
      color: AppColors.stepperColor,
      backgroundColor: AppColors.white,
      onRefresh: () async {
        context.read<DewormingsBloc>().add(
          DewormingsEvent.dewormings(_selectedDay),
        );
      },
      child: ListView(
        children: [
          DaySelector(
            days: nextFiveDays,
            initialDate: now,
            onDaySelected: (day) {
              setState(() {
                _selectedDay = day;
              });
              context.read<DewormingsBloc>().add(
                DewormingsEvent.dewormings(_selectedDay),
              );
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
                  BottomModels.addDeWroomingBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap15,
          CustomCard(
            child: BlocBuilder<DewormingsBloc, DewormingsState>(
              builder: (context, state) {
                final items = state.dewormings;
                return state.dewormingsStatus.loading
                    ? LoadingWidget.circularProgressIndicatorCenter
                    : items.isEmpty
                    ? Padding(
                      padding: Styles.edgeInsetsOnlyH20,
                      child: EmptyListPage(
                        titleFontSize: 24,
                        imagePath: ImageResources.tshirt,
                        title:
                            "We don’t have  ${widget.selectedPet.petName} daily care data yet. Start logging her dewormings to see a summary!",
                      ),
                    )
                    : AppCustomListViewBuilder(
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      isExpand: false,
                      separatorBuilder: (context, i) => Styles.gap10,
                      itemBuilder: (context, index) {
                        final dewormingItem = items[index];
                        return CustomCard(
                          borderRadius: Styles.borderRadiusCircular08,
                          child: Row(
                            children: [
                              AppAssestsImage(
                                path: ImageResources.walksicon,
                                width: 40,
                                height: 40,
                              ),
                              Styles.gap10,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppText.date,
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 12,
                                            color: AppColors.grey500,
                                          ),
                                    ),
                                    Text(
                                      AppUtil.formatDateToMMDDYYYY(
                                        DateTime.parse(dewormingItem.date),
                                      ),
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Styles.gap15,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Next ${AppUtil.formatDateToMMDDYYYY(DateTime.parse(dewormingItem.dueDate))}',
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Styles.gap4,
                                  Text(
                                    dewormingItem.productName,
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
