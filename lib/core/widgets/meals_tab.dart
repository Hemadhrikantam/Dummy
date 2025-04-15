import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/buttons/overview_button.dart';
import 'package:dummy/core/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MealsTab extends StatefulWidget {
  const MealsTab({super.key});

  @override
  State<MealsTab> createState() => _MealsTabState();
}

DateTime? _selectedDay;

class _MealsTabState extends State<MealsTab> {
  final List<MealItem> _mealItems = List.generate(
    5,
    (index) => MealItem(
      name: 'Chicken & Rice',
      imageUrls: ['assets/icons/dog_food.png', 'assets/icons/dog_food.png'],
      date: DateTime(2025, 3, 26).add(Duration(days: index)),
      timeOfDay:
          [
            'Breakfast',
            'Breakfast',
            'Breakfast',
            'Breakfast',
            'Breakfast',
          ][index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final nextFiveDays = List.generate(
      6,
      (index) => now.add(Duration(days: index)),
    );

    return Expanded(
      child: Column(
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
          OverviewAddButton(onPressed: () {}),
          if (_selectedDay == null) Styles.gap10,
          Expanded(
            child: ListView.builder(
              itemCount: _mealItems.length,
              itemBuilder: (context, index) {
                final mealItem = _mealItems[index];
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
                          child: Image.asset(
                            'assets/icons/meals.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Meals',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                mealItem.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Row(
                                children:
                                    mealItem.imageUrls
                                        .map(
                                          (url) => Padding(
                                            padding: const EdgeInsets.only(
                                              right: 4.0,
                                            ),
                                            child: SizedBox(
                                              width: 24.0,
                                              height: 24.0,
                                              child: Image.asset(
                                                url,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              DateFormat('MM/dd/yyyy').format(mealItem.date),
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              mealItem.timeOfDay,
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
      ),
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
