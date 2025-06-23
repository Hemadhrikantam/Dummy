import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppCustomDateField extends StatelessWidget {
  const AppCustomDateField({
    super.key,
    this.suffixIcon,
    this.enable = true,
    this.hintText,
    this.selectedDate,
    required this.onChange,
    this.headerText, this.maxDate, this.minDate,
  });
  final IconData? suffixIcon;
  final bool enable;
  final String? hintText;
  final String? headerText;
  final DateTime? selectedDate;
  final DateTime? maxDate;
  final DateTime? minDate;
  final Function(DateTime) onChange;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller:
          selectedDate != null
              ? TextEditingController(text: _formatDate(selectedDate!))
              : null,
      suffixIcon: suffixIcon ?? Iconsax.calendar,
      readOnly: true,
      hintText: hintText ?? AppText.enter,
      onChanged: (value) {},
      headerText: headerText ?? AppText.date,
      enable: enable,
      onTap:
          !enable
              ? null
              : () {
                _pickDate(
                  context,
                  selectedDate: selectedDate,
                  minDate: minDate,
                  maxDate: maxDate,
                  onChange: onChange,
                );
              },
    );
  }
}

String _formatDate(DateTime date) {
  return "${date.day.toString().padLeft(2, '0')}/"
      "${date.month.toString().padLeft(2, '0')}/"
      "${date.year}";
}

void _pickDate(
  BuildContext context, {
  DateTime? selectedDate,
  DateTime? minDate,
  DateTime? maxDate,
  required Function(DateTime) onChange,
}) {
  DateTime tempPickedDate = DateTime.now();

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) {
      return SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Styles.gap4,
            AppGraber(),
            Styles.gap10,
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                AppText.dateOfBirth,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate??DateTime.now(),
                maximumDate: maxDate,
                minimumDate: minDate,
                onDateTimeChanged: (DateTime dateTime) {
                  tempPickedDate = dateTime;
                },
              ),
            ),
            Styles.gap10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: AppOutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      name: Text(
                        AppText.cancel,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                    ),
                  ),
                  Styles.gap10,
                  Expanded(
                    child: AppButton(
                      onPressed: () {
                        onChange(tempPickedDate);
                        Navigator.pop(context);
                      },
                      name: Text(
                        AppText.save,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
