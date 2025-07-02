import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/features/health/presentation/bloc/medications/medications_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/app_graber.dart';

class MedicationFilterBottomSheet extends StatefulWidget {
  const MedicationFilterBottomSheet({super.key, required this.onSaved});
  final Function(String startDate, String endDate) onSaved;

  @override
  State<MedicationFilterBottomSheet> createState() =>
      _MedicationFilterBottomSheet();
}

class _MedicationFilterBottomSheet extends State<MedicationFilterBottomSheet> {
  DateTime selectedDate = DateTime.now();
  final _dobController = TextEditingController();
  final _dobController1 = TextEditingController();
  @override
  void initState() {
    super.initState();
    final state = context.read<MedicationsBloc>().state;
    if (state.startDate.value.isNotEmpty) {
      _dobController.text = state.startDate.value;
    }
    if (state.endDate.value.isNotEmpty) {
      _dobController1.text = state.endDate.value;
    }
  }

  void _pickDate() {
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
                  AppText.startDate,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Styles.gap10,
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: selectedDate,
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
                          context.pop();
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

  void _pickDate1() {
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
                  AppText.endDate,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Styles.gap10,
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: selectedDate,
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
                          context.pop();
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
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
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
          BlocSelector<MedicationsBloc, MedicationsState, NotEmpty>(
            selector: (state) {
              return state.startDate;
            },
            builder: (context, state) {
              return AppTextFormField(
                controller: _dobController,
                hintText: 'Select Start Date',
                readOnly: true,
                isMandatory: true,
                headerText: AppText.startDate,
                suffixIcon: Iconsax.calendar,
                onTap: _pickDate,
              );
            },
          ),
          Styles.gap15,
          BlocSelector<MedicationsBloc, MedicationsState, NotEmpty>(
            selector: (state) {
              return state.endDate;
            },
            builder: (context, state) {
              return AppTextFormField(
                headerText: AppText.endDate,
                controller: _dobController1,
                isMandatory: true,
                onTap: _pickDate1,
                readOnly: true,
                suffixIcon: Iconsax.calendar,
                hintText: 'Select End Date',
              );
            },
          ),
          Styles.gap30,
          BlocBuilder<MedicationsBloc, MedicationsState>(
            builder: (context, state) {
              return AppButton(
                onPressed:
                    (_dobController.text.isNotEmpty &&
                                _dobController1.text.isNotEmpty) ||
                            (state.startDate.isValid && state.endDate.isValid)
                        ? () {
                          widget.onSaved(
                            _dobController.text,
                            _dobController1.text,
                          );
                        }
                        : () {},
                name: Text(AppText.save, style: Styles.buttonStyle),
              );
            },
          ),
          Styles.gap10,
        ],
      ),
    );
  }
}
