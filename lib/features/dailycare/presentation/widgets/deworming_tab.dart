import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';

class DewormingTab extends StatefulWidget {
  const DewormingTab({super.key});

  @override
  State<DewormingTab> createState() => _DewormingTabState();
}

DateTime? _selectedDay;

class _DewormingTabState extends State<DewormingTab> {
  List<DewormingItem> get _dewormingItems {
    final selectedDate = _selectedDay ?? DateTime.now();
    return List.generate(
      5,
      (index) => DewormingItem(
        dateGiven: selectedDate.add(Duration(days: index)),
        productName: AppText.productName,
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
                BottomModels.addDeWroomingBottomSheet(context);
              },
            ),
          ],
        ),
        Styles.gap15,
        CustomCard(
          child: AppCustomListViewBuilder(
            itemCount: _dewormingItems.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            isExpand: false,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, index) {
              final dewrooming = _dewormingItems[index];
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
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 12,
                              color: AppColors.grey500,
                            ),
                          ),
                          Text(
                            '03/26/2025',
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
                          'Next 03/26/2025',
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Styles.gap4,
                        Text(
                          dewrooming.productName,
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

class DewormingItem {
  final DateTime dateGiven;
  final String productName;

  DewormingItem({required this.dateGiven, required this.productName});
}
