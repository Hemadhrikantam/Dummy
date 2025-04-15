import 'package:dummy/core/constent/app_colors.dart'; // Import your AppColors
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DaySelector extends StatefulWidget {
  final List<DateTime> days;
  final DateTime? initialDate;
  final ValueChanged<DateTime>? onDaySelected;

  const DaySelector({
    super.key,
    required this.days,
    this.initialDate,
    this.onDaySelected,
  });

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  late DateTime _selectedDate;

  // Using colors from AppColors
  final Color _selectedColor = AppColors.buttonBackground;
  final Color _unselectedColor = Colors.grey.shade100;
  final TextStyle _selectedTextStyle = const TextStyle(
    color: AppColors.buttonTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  final TextStyle _unselectedTextStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  final double _itemWidth = 63.0;
  final double _itemHeight = 62.0;
  final double _borderRadius = 8.0;
  final double _borderWidth = 1.0;
  final EdgeInsets _itemPadding = const EdgeInsets.all(8.0);
  final double _itemGap = 9.0;

  Widget _defaultDayBuilder(DateTime day, bool isSelected) {
    final backgroundColor = isSelected ? _selectedColor : _unselectedColor;
    final textColor =
        isSelected ? _selectedTextStyle.color : _unselectedTextStyle.color;
    final fontWeight =
        isSelected
            ? _selectedTextStyle.fontWeight
            : _unselectedTextStyle.fontWeight;
    final fontSize =
        isSelected
            ? _selectedTextStyle.fontSize
            : _unselectedTextStyle.fontSize;

    return SizedBox(
      width: _itemWidth,
      height: _itemHeight,
      child: CustomCard(
        backgroundColor: backgroundColor,
        padding: _itemPadding,
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(
          // color: AppColors.borderColor,
          width: _borderWidth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('E').format(day).substring(0, 3),
              style: TextStyle(color: textColor, fontSize: 12),
            ),
            Styles.gap4,
            Text(
              '${day.day}',
              style: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _itemGap),
        child: Row(
          children:
              widget.days.map((day) {
                final isSelected =
                    _selectedDate.year == day.year &&
                    _selectedDate.month == day.month &&
                    _selectedDate.day == day.day;

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: _itemGap / 2),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDate = day;
                        widget.onDaySelected?.call(day);
                      });
                    },
                    child: _defaultDayBuilder(day, isSelected),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
