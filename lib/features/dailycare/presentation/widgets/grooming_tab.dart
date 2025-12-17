import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/animated_row_column.dart';
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
import '../bloc/groomings/groomings_bloc.dart';

class GroomingTab extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  const GroomingTab({super.key, required this.selectedPet});

  @override
  State<GroomingTab> createState() => _GroomingTabState();
}

DateTime? _selectedDay;

class _GroomingTabState extends State<GroomingTab> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<GroomingsBloc>().add(GroomingsEvent.groomings(_selectedDay));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     final now = DateTime.now();
    _selectedDay ??= now;

    final daysInLast30Days = List.generate(
      30,
      (index) => DateTime(now.year, now.month, now.day - index),
    );

    return RefreshIndicator.adaptive(
      color: AppColors.stepperColor,
      backgroundColor: AppColors.white,
      onRefresh: () async {
        context.read<GroomingsBloc>().add(
          GroomingsEvent.groomings(_selectedDay),
        );
      },
      child: AnimatedListView(
        children: [
          DaySelector(
            days: daysInLast30Days.reversed.toList(),
            initialDate: now,
            onDaySelected: (day) {
              setState(() {
                _selectedDay = day;
              });
              context.read<GroomingsBloc>().add(
                GroomingsEvent.groomings(_selectedDay),
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
                  BottomModels.addGroomingBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap15,
          CustomCard(
            child: BlocBuilder<GroomingsBloc, GroomingsState>(
              builder: (context, state) {
                final items = state.groomings;
                return state.groomingsStatus.loading
                    ? LoadingWidget.circularProgressIndicatorCenter
                    : items.isEmpty
                    ? Padding(
                      padding: Styles.edgeInsetsOnlyH20,
                      child: EmptyListPage(
                        titleFontSize: 24,
                        imagePath: ImageResources.tshirt,
                        title:
                            "We don’t have ${widget.selectedPet?.name}s daily care data yet. Start logging her groomings to see a summary!",
                      ),
                    )
                    : AppCustomListViewBuilder(
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      isExpand: false,
                      separatorBuilder: (context, i) => Styles.gap10,
                      itemBuilder: (context, index) {
                        final groomingItem = items[index];
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
                                      AppText.grooming,
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 12,
                                            color: AppColors.grey500,
                                          ),
                                    ),
                                    Text(
                                      groomingItem.groomingType,
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
                                          url:
                                              groomingItem
                                                  .media
                                                  .first
                                                  .fileUrl ??
                                              '',
                                          borderRadius:
                                              Styles.borderRadiusCircular04,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Styles.gap15,
                              Text(
                                AppUtil.formatDateToMMDDYYYY(
                                  DateTime.parse(groomingItem.date),
                                ),
                                style: context.textTheme.titleSmall?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
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
