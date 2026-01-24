import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/app_graber.dart';
import '../../bloc/vaccinations/vaccinations_bloc.dart';

class VaccinationFilterBottomSheet extends StatefulWidget {
  const VaccinationFilterBottomSheet({
    super.key,
    required this.onSaved,
    required this.onReset,
  });
  final Function(String startDate, String endDate) onSaved;
  final Function() onReset;

  @override
  State<VaccinationFilterBottomSheet> createState() =>
      _VaccinationFilterBottomSheet();
}

class _VaccinationFilterBottomSheet
    extends State<VaccinationFilterBottomSheet> {
  DateTime? selectedAdministerDate;
  DateTime? selectedDueDate;

  final _administeredController = TextEditingController();
  final _dueController = TextEditingController();
  @override
  void initState() {
    super.initState();
    final state = context.read<VaccinationsBloc>().state;
    if (state.dateAdministered.value.isNotEmpty) {
      _administeredController.text = state.dateAdministered.value;
      selectedAdministerDate = _parseDate(state.dateAdministered.value);
    }
    if (state.dueDate.value.isNotEmpty) {
      _dueController.text = state.dueDate.value;
      selectedDueDate = _parseDate(state.dueDate.value);
    }
  }

  void _pickAdministeredDate() {
    DateTime tempDate = selectedAdministerDate ?? DateTime.now();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return _datePickerSheet(
          title: AppText.startDate,
          initialDate: tempDate,
          maximumDate: DateTime.now(),
          onSave: () {
            setState(() {
              selectedAdministerDate = tempDate;
              selectedDueDate = null;
              _dueController.clear();
              _administeredController.text = _formatDate(tempDate);
            });
            context.pop();
          },
          onChanged: (date) => tempDate = date,
        );
      },
    );
  }

  void _pickDueDate() {
    if (selectedAdministerDate == null) return;

    DateTime tempDate = selectedDueDate ?? selectedAdministerDate!;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return _datePickerSheet(
          title: AppText.endDate,
          initialDate: tempDate,
          minimumDate: selectedAdministerDate,
          onSave: () {
            setState(() {
              selectedDueDate = tempDate;
              _dueController.text = _formatDate(tempDate);
            });
            context.pop();
          },
          onChanged: (date) => tempDate = date,
        );
      },
    );
  }

  Widget _datePickerSheet({
    required String title,
    required DateTime initialDate,
    DateTime? minimumDate,
    DateTime? maximumDate,
    required VoidCallback onSave,
    required Function(DateTime) onChanged,
  }) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          Styles.gap10,
          Expanded(
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: initialDate,
              minimumDate: minimumDate,
              maximumDate: maximumDate,
              onDateTimeChanged: onChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: AppOutlinedButton(
                    onPressed: () => context.pop(),
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
                    onPressed: onSave,
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
  }

  bool get _isValidRange => selectedAdministerDate != null;

  String _formatDate(DateTime date) =>
      "${date.day.toString().padLeft(2, '0')}/"
      "${date.month.toString().padLeft(2, '0')}/"
      "${date.year}";

  DateTime _parseDate(String value) {
    final parts = value.split('/');
    return DateTime(
      int.parse(parts[2]),
      int.parse(parts[1]),
      int.parse(parts[0]),
    );
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
          AppTextFormField(
            controller: _administeredController,
            hintText: 'Select Date Adminstered',
            readOnly: true,
            headerText: AppText.dateAdministered,
            suffixIcon: Iconsax.calendar,
            onTap: _pickAdministeredDate,
          ),
          Styles.gap15,
          AppTextFormField(
            controller: _dueController,
            hintText: 'Select Due Date',
            readOnly: true,
            headerText: AppText.duedate,
            suffixIcon: Iconsax.calendar,
            onTap: _pickDueDate,
          ),
          Styles.gap30,
          BlocBuilder<VaccinationsBloc, VaccinationsState>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: AppOutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedAdministerDate = null;
                          selectedDueDate = null;
                          _administeredController.clear();
                          _dueController.clear();
                        });
                        if (state.dateAdministered.isPure &&
                            state.dueDate.isPure) {
                          return;
                        }
                        widget.onReset();
                      },
                      name: Text(
                        AppText.reset,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                    ),
                  ),
                  Styles.gap10,
                  Expanded(
                    child: BlocBuilder<VaccinationsBloc, VaccinationsState>(
                      builder: (context, state) {
                        return AppButton(
                          onPressed:
                              _isValidRange
                                  ? () {
                                    widget.onSaved(
                                      _administeredController.text,
                                      _dueController.text,
                                    );
                                  }
                                  : null,
                          name: Text(AppText.save, style: Styles.buttonStyle),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          Styles.gap10,
        ],
      ),
    );
  }
}
