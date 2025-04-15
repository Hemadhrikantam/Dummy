import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class DaySelector extends StatefulWidget {
  final List<DateTime> days;

  final DateTime? initialDate;

  final ValueChanged<DateTime>? onDaySelected;

  const DaySelector({
    Key? key,

    required this.days,

    this.initialDate,
    this.onDaySelected,
  }) : super(key: key);

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  late DateTime _selectedDate;

  final Color _selectedColor = Colors.orangeAccent;
  final Color _unselectedColor = Colors.grey.shade100;
  final TextStyle _selectedTextStyle = const TextStyle(
    color: Colors.brown,

    fontWeight: FontWeight.bold,

    fontSize: 14,
  );

  final TextStyle _unselectedTextStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.normal,

    fontSize: 114,
  );

  final double _itemWidth = 80.0;


  //final EdgeInsetsGeometry _itemPadding = const EdgeInsets.all(8.0);

  Widget _defaultDayBuilder(DateTime day, bool isSelected) {
    final backgroundColor = isSelected ? _selectedColor : _unselectedColor;

    final textColor =
        isSelected ? _selectedTextStyle.color : _unselectedTextStyle.color;

    return SizedBox(
      width: _itemWidth,
      child: CustomCard(
        backgroundColor: backgroundColor,
        padding: Styles.edgeInsetsAll15,
        borderRadius: Styles.borderRadiusCircular08,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Text(
              DateFormat('E').format(day).substring(0, 3),
        
              style: TextStyle(color: textColor, fontSize: 10),
            ),
        
            Styles.gap4,
        
            Text(
              '${day.day}',
        
              style: TextStyle(
                color: textColor,
        
                fontWeight: FontWeight.bold,
        
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _selectedDate = widget.initialDate ?? widget.days.first;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children:
            widget.days.map((day) {
              final isSelected =
                  _selectedDate.year == day.year &&
                  _selectedDate.month == day.month &&
                  _selectedDate.day == day.day;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),

                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = day;

                      widget.onDaySelected?.call(day);
                    });
                  },

                  child: _defaultDayBuilder(
                    day,

                    isSelected,
                  ), // Using the default builder
                ),
              );
            }).toList(),
      ),
    );
  }
}
