import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_meal_form.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MealsTab extends StatefulWidget {
  const MealsTab({super.key});

  @override
  State<MealsTab> createState() => _MealsTabState();
}

DateTime? _selectedDay;

class _MealsTabState extends State<MealsTab> {
  
  void _showAddMealBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.backGround1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (BuildContext builderContext) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              thickness: 2.0,
              indent: 80.0,
              endIndent: 80.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 8.0),
            const AddMealForm(),
          ],
        );
      },
    );
  }

  List<MealItem> get _mealItems {
    final selectedDate = _selectedDay ?? DateTime.now();
    return List.generate(
      5,
      (index) => MealItem(
        name: AppText.chickenandrice,
        imageUrls: [ImageResources.mealsdagicon, ImageResources.mealsdagicon],
        date: selectedDate.add(Duration(days: index)),
        timeOfDay: AppText.breakfast, 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final nextFiveDays = List.generate(
      6,
      (index) => now.add(Duration(days: index)),
    );

    return ListView(
      children: [
        DaySelector(
          days: nextFiveDays,
          initialDate: now,
          onDaySelected: (day) {
            setState(() {
              _selectedDay = day;
            });
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
                _showAddMealBottomSheet(context);
              },
            ),
          ],
        ),
        Styles.gap15,
        CustomCard(
          child: AppCustomListViewBuilder(
            itemCount: _mealItems.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            isExpand: false,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, index) {
              final mealItem = _mealItems[index];
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
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 12,
                              color: AppColors.grey500,
                            ),
                          ),
                          Text(
                            mealItem.name,
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children:
                                mealItem.imageUrls
                                    .map(
                                      (url) => Padding(
                                        padding: Styles.edgeInsetsOnlyW04,
                                        child: SizedBox(
                                          child: AppAssestsImage(
                                            width: 24.0,
                                            height: 24.0,
                                            path: url,
                                            borderRadius:
                                                Styles.borderRadiusCircular04,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                        ],
                      ),
                    ),
                    Styles.gap15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          DateFormat('MM/dd/yyyy').format(mealItem.date),
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          mealItem.timeOfDay,
                          style: context.textTheme.titleSmall?.copyWith(
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
          ),
        ),
      ],
    );
  }
}

class MealItem {
  final String name;
  final List<String> imageUrls;
  final DateTime date;
  final String timeOfDay;

  MealItem({
    required this.name,
    required this.imageUrls,
    required this.date,
    required this.timeOfDay,
  });
}
