import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

class CustomDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime)? onDateSelected;

  const CustomDatePicker({
    Key? key,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
  }) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime _selectedDate;
  late int _currentMonth;
  late int _currentYear;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate ?? DateTime.now();
    _currentMonth = _selectedDate.month;
    _currentYear = _selectedDate.year;
  }

  int _daysInMonth(int year, int month) {
    return DateTimeRange(
      start: DateTime(year, month),
      end: DateTime(year, month + 1),
    ).duration.inDays;
  }

  List<Widget> _buildDayPicker() {
    final firstDayOfMonth = DateTime(_currentYear, _currentMonth);
    final daysInMonth = _daysInMonth(_currentYear, _currentMonth);
    final weekdayOfFirstDay =
        firstDayOfMonth.weekday; // 1 for Monday, 7 for Sunday
    final List<Widget> dayWidgets = [];

    // Add empty boxes for the days before the first day of the month
    for (int i = 0; i < weekdayOfFirstDay - 1; i++) {
      dayWidgets.add(const SizedBox(width: 40.0, height: 40.0));
    }

    for (int day = 1; day <= daysInMonth; day++) {
      final currentDate = DateTime(_currentYear, _currentMonth, day);
      final isSelected =
          _selectedDate.year == _currentYear &&
          _selectedDate.month == _currentMonth &&
          _selectedDate.day == day;

      dayWidgets.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedDate = currentDate;
            });
          },
          child: Container(
            width: 40.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:
                  isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Text(
              '$day',
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
    return dayWidgets;
  }

  @override
  Widget build(BuildContext context) {
    final monthYearFormat = DateFormat('MMMM yyyy');

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_left),
                onPressed: () {
                  setState(() {
                    _currentMonth--;
                    if (_currentMonth < 1) {
                      _currentMonth = 12;
                      _currentYear--;
                    }
                  });
                },
              ),
              Text(
                monthYearFormat.format(DateTime(_currentYear, _currentMonth)),
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_right),
                onPressed: () {
                  setState(() {
                    _currentMonth++;
                    if (_currentMonth > 12) {
                      _currentMonth = 1;
                      _currentYear++;
                    }
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: 7,
            itemBuilder: (context, index) {
              final dayNames = [
                'Mon',
                'Tue',
                'Wed',
                'Thu',
                'Fri',
                'Sat',
                'Sun',
              ];
              return Center(
                child: Text(
                  dayNames[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
          const SizedBox(height: 8.0),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 7,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            children: _buildDayPicker(),
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cancel
                },
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (widget.onDateSelected != null) {
                    widget.onDateSelected!(_selectedDate);
                  }
                  Navigator.of(
                    context,
                  ).pop(_selectedDate); // Confirm and return date
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// How to use this custom date picker (e.g., in your DewormingScreen):

// ... inside your DewormingScreen's _selectDate function:

// Future<void> _selectDate(BuildContext context) async {
//   final DateTime? picked = await showDialog<DateTime>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: CustomDatePicker(
//           initialDate: _selectedDate,
//           firstDate: DateTime(2020),
//           lastDate: DateTime(2030),
//         ),
//       );
//     },
//   );

//   if (picked != null && picked != _selectedDate) {
//     setState(() {
//       _selectedDate = picked;
//     });
//   }
// }

// ... and in your DewormingScreen's TextFormField for Date:

// TextFormField(
//   readOnly: true,
//   decoration: InputDecoration(
//     hintText: _selectedDate == null ? 'Select Date' : DateFormat('dd/MM/yyyy').format(_selectedDate!),
//     suffixIcon: IconButton(
//       icon: const Icon(Icons.calendar_today_outlined),
//       onPressed: () => _selectDate(context),
//     ),
//     border: const OutlineInputBorder(),
//   ),
//   onTap: () => _selectDate(context),
// ),
