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
import '../bloc/expenses/expenses_bloc.dart';

class ExpensesTab extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  const ExpensesTab({super.key, required this.selectedPet});

  @override
  State<ExpensesTab> createState() => _ExpensesTabState();
}

DateTime? _selectedDay;

class _ExpensesTabState extends State<ExpensesTab> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<ExpensesBloc>().add(ExpensesEvent.expenses(_selectedDay));
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
        context.read<ExpensesBloc>().add(ExpensesEvent.expenses(_selectedDay));
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
              context.read<ExpensesBloc>().add(
                ExpensesEvent.expenses(_selectedDay),
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
                  BottomModels.addExpansesBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap15,
          CustomCard(
            child: BlocBuilder<ExpensesBloc, ExpensesState>(
              builder: (context, state) {
                final items = state.expenses;
                return state.expensesStatus.loading
                    ? LoadingWidget.circularProgressIndicatorCenter
                    : items.isEmpty
                    ? Padding(
                      padding: Styles.edgeInsetsOnlyH20,
                      child: EmptyListPage(
                        titleFontSize: 24,
                        imagePath: ImageResources.tshirt,
                        title:
                            "We don’t have ${widget.selectedPet?.petName??''} daily care data yet. Start logging her expenses to see a summary!",
                      ),
                    )
                    : AppCustomListViewBuilder(
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      isExpand: false,
                      separatorBuilder: (context, i) => Styles.gap10,
                      itemBuilder: (context, index) {
                        final expenseItem = items[index];
                        return CustomCard(
                          child: Row(
                            children: [
                              AppAssestsImage(
                                path: ImageResources.expensesicon,
                                width: 40,
                                height: 40,
                              ),
                              Styles.gap15,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppText.amount,
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            fontSize: 12,
                                            color: AppColors.grey500,
                                          ),
                                    ),
                                    Styles.gap4,
                                    Text(
                                      expenseItem.category,
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
                                          url: expenseItem.media,
                                          borderRadius:
                                              Styles.borderRadiusCircular04,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    AppUtil.formatDateToMMDDYYYY(
                                      DateTime.parse(expenseItem.date),
                                    ),
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    expenseItem.notes,
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
