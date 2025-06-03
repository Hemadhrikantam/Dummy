import 'package:dummy/core/constent/app_colors.dart'; // Import your AppColors
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  DateTime today = DateTime.now();
  final Color _selectedColor = AppColors.buttonBackground;
  final Color _unselectedColor = Colors.grey.shade100;

  final double _itemWidth = 50;
  // final double _itemHeight = 65.0;
  final double _borderRadius = 8.0;
  final double _itemGap = 9.0;

  Widget _defaultDayBuilder(DateTime day, bool isSelected) {
    final backgroundColor = isSelected ? _selectedColor : _unselectedColor;
    final isToday =
        day.year == today.year &&
        day.month == today.month &&
        day.day == today.day;
    return SizedBox(
      width: _itemWidth,
      child: CustomCard(
        padding: Styles.edgeInsetsOnlyH02,
        backgroundColor: backgroundColor,
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(
          color:
              isSelected
                  ? AppColors.secondaryColor
                  : (isToday ? AppColors.stepperColor : AppColors.grey350),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Styles.gap4,
            Text(
              DateFormat('E').format(day).substring(0, 3),
              style: GoogleFonts.instrumentSans(
                color:
                    isSelected || isToday
                        ? AppColors.buttonTextColor
                        : AppColors.grey500,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Styles.gap4,
            Text(
              '${day.day}',
              style: GoogleFonts.instrumentSans(
                color:
                    isSelected || isToday
                        ? AppColors.buttonTextColor
                        : AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Styles.gap4,
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
                  padding: Styles.edgeInsetsOnlyW04,
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
