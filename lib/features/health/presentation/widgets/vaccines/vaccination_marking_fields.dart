part of 'vaccination_marking_bottom_sheet_content.dart';

class __Notes extends StatelessWidget {
  const __Notes();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
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
  const __DueDate();

  @override
  State<__DueDate> createState() => __DueDateState();
}

class __DueDateState extends State<__DueDate> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return AppCustomDateField(
      headerText: AppText.dueDate,
      selectedDate: date,
      onChange: (value) {
        setState(() {
          date = value;
        });
      },
    );
  }
}
