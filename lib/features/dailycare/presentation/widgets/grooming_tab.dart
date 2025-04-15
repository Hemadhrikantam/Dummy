import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Styles.gap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: AppButton(
                name: Text(
                  AppText.add,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                width: 90,
              ),
            ),
          ],
        ),
        Styles.gap10,
        Expanded(
          child: ListView.builder(
            itemCount: _groomingItems.length,
            itemBuilder: (context, index) {
              final groomingItem = _groomingItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: AppAssestsImage(
                          path: ImageResources.groomingicon,
                          boxFit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppText.grooming,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              groomingItem.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            DateFormat('MM/dd/yyyy').format(groomingItem.date),
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            groomingItem.time,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
