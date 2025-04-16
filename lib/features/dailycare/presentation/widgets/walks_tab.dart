import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalksTab extends StatefulWidget {
  const WalksTab({super.key});

  @override
  State<WalksTab> createState() => _WalksTabState();
}

DateTime? _selectedDay;

class _WalksTabState extends State<WalksTab> {
  List<WalkItem> get _walkItems {
    final selectedDate = _selectedDay ?? DateTime.now();
    return List.generate(
      5,
      (index) => WalkItem(
        name: AppText.thirtyminsatpark,
        date: selectedDate.add(Duration(days: index)),
        timeOfDay: AppText.park,
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
            ),
          ],
        ),
        Styles.gap15,
        CustomCard(
          child: AppCustomListViewBuilder(
            itemCount: _walkItems.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            isExpand: false,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, index) {
              final walkItem = _walkItems[index];
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat('MM/dd/yyyy').format(walkItem.date),
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Styles.gap4,
                        Text(
                          walkItem.timeOfDay,
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

class WalkItem {
  final String name;
  final DateTime date;
  final String timeOfDay;

  WalkItem({required this.name, required this.date, required this.timeOfDay});
}
