import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/app_graber.dart';

class VaccinationFilterBottomSheet extends StatefulWidget {
  const VaccinationFilterBottomSheet({super.key});

  @override
  State<VaccinationFilterBottomSheet> createState() =>
      _VaccinationFilterBottomSheet();
}

class _VaccinationFilterBottomSheet
    extends State<VaccinationFilterBottomSheet> {
  DateTime selectedDate = DateTime.now();
  final _dobController = TextEditingController();
  final _dobController1 = TextEditingController();
  void _pickDate( ) {
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
                  initialDateTime: selectedDate ?? DateTime(2000, 1, 1),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime dateTime) {
                    tempPickedDate = dateTime;
                  },
                ),
              ),
              Styles.gap10,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
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
                          setState(() {
                            selectedDate = tempPickedDate;
                            _dobController.text = _formatDate(tempPickedDate);
                          });
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
  
  void _pickDate1( ) {
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
                  initialDateTime: selectedDate ?? DateTime(2000, 1, 1),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime dateTime) {
                    tempPickedDate = dateTime;
                  },
                ),
              ),
              Styles.gap10,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
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
                          setState(() {
                            selectedDate = tempPickedDate;
                            _dobController1.text = _formatDate(tempPickedDate);
                          });
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
  
  String _formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/"
        "${date.month.toString().padLeft(2, '0')}/"
        "${date.year}";
  }
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.41,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            Styles.gap6,
            AppGraber(),
            Styles.gap16,
            Text(
              AppText.filter,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            Styles.gap15,
            Text(
              AppText.dateAdministered,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Styles.gap6,
            AppTextFormField(
              controller: _dobController,
              hintText: 'Select Date Adminstered',
              readOnly: true,
              suffixIcon: Iconsax.calendar,
              onTap: () {_pickDate();},
            ),
            Styles.gap15,
            Text(
              AppText.duedate,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Styles.gap6,
             AppTextFormField(
              controller: _dobController1,
              hintText: 'Select Due Date',
              readOnly: true,
              suffixIcon: Iconsax.calendar,
              onTap: () {_pickDate1();},
            ),
            Styles.gap30,
            AppButton(name: Text(AppText.save, style: Styles.buttonStyle)),
          ],
        );
      },
    );
  }
}
