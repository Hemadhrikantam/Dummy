import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/buttons/overview_button.dart';
import 'package:dummy/core/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalksTab extends StatefulWidget {
  const WalksTab({super.key});

  @override
  State<WalksTab> createState() => _WalksTabState();
}

DateTime? _selectedDay;

class _WalksTabState extends State<WalksTab> {
  final List<WalkItem> _walkItems = List.generate(
    5,
    (index) => WalkItem(
      name: '30 mins at the park',
      date: DateTime(2025, 3, 26).add(Duration(days: index)),
      timeOfDay: ['Park', 'park', 'park', 'park', 'park'][index],
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
              itemCount: _walkItems.length,
              itemBuilder: (context, index) {
                final walkItem = _walkItems[index];
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
                            'assets/icons/walks.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Duration',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                walkItem.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              // **REMOVE THIS WIDGET:**
                              // Row(
                              //   children:
                              //       walkItem.imageUrls.map((url) => Padding(
                              //             padding: const EdgeInsets.only(right: 4.0),
                              //             child: SizedBox(
                              //               width: 24.0,
                              //               height: 24.0,
                              //               child: Image.asset(url, fit: BoxFit.cover),
                              //             ),
                              //           ))
                              //           .toList(),
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              DateFormat('MM/dd/yyyy').format(walkItem.date),
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              walkItem.timeOfDay,
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

class WalkItem {
  final String name;
  final DateTime date;
  final String timeOfDay;

  WalkItem({required this.name, required this.date, required this.timeOfDay});
}
