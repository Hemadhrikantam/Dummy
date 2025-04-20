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
  final dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: dateController,
      suffixIcon: Iconsax.calendar,
      readOnly: true,
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.duedate,
      onTap: () {
        AppUtil.datePicker(context, startDate: DateTime(1900)).then((value) {
          if (value != null) {
            dateController.text = value;
          }
        });
      },
    );
  }
}
