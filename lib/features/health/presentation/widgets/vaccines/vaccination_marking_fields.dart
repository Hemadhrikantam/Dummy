part of 'vaccination_marking_bottom_sheet_content.dart';

class __Notes extends StatelessWidget {
  const __Notes({required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      hintText: AppText.enter,
      borderRadius: Styles.borderRadiusCircular25,
      onChanged: (value) {},
      maxLines: 7,
      heigth: 140,
      headerText: AppText.notes,
    );
  }
}

class __DueDate extends StatefulWidget {
  const __DueDate({this.initialDate, required this.onChange});
  final DateTime? initialDate;
  final ValueChanged<DateTime> onChange;

  @override
  State<__DueDate> createState() => __DueDateState();
}

class __DueDateState extends State<__DueDate> {
  DateTime? date;
  @override
  void initState() {
    super.initState();
    date = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return AppCustomDateField(
      enable: true,
      headerText: AppText.nextDueDate,
      selectedDate: date,
      onChange: (value) {
        setState(() {
          date = value;
        });
        widget.onChange(value);
      },
    );
  }
}
