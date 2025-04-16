import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add_grooming_form.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GroomingTab extends StatefulWidget {
  const GroomingTab({super.key});

  @override
  State<GroomingTab> createState() => _GroomingTabState();
}

DateTime? _selectedDay;

class _GroomingTabState extends State<GroomingTab> {
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
            const AddGroomingForm(),
          ],
        );
      },
    );
  }

  List<GroomingItem> get _groomingItems {
    final selectedDate = _selectedDay ?? DateTime.now();
    return List.generate(
      5,
      (index) => GroomingItem(
        name: AppText.bath,
        date: selectedDate.add(Duration(days: index)),
        time: AppText.tenth, // Using a constant for time
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
            itemCount: _groomingItems.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            isExpand: false,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, index) {
              final walkItem = _groomingItems[index];
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
                            AppText.duration,
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 12,
                              color: AppColors.grey500,
                            ),
                          ),
                          Text(
                            walkItem.name,
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Styles.gap15,
                    Text(
                      DateFormat('MM/dd/yyyy').format(walkItem.date),
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
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

class GroomingItem {
  final String name;
  final DateTime date;
  final String time;

  GroomingItem({required this.name, required this.date, required this.time});
}
