import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
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
  const MedicationFilterBottomSheet({
    super.key,
    required this.onSaved,
    required this.onReset,
  });

  final Function(String startDate, String endDate) onSaved;
  final Function() onReset;

  @override
  State<MedicationFilterBottomSheet> createState() =>
      _MedicationFilterBottomSheetState();
}

class _MedicationFilterBottomSheetState
    extends State<MedicationFilterBottomSheet> {
  DateTime? _startDate;
  DateTime? _endDate;

  final _startController = TextEditingController();
  final _endController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<MedicationsBloc>().state;

    if (state.startDate.value.isNotEmpty) {
      _startController.text = state.startDate.value;
      _startDate = _parseDate(state.startDate.value);
    }

    if (state.endDate.value.isNotEmpty) {
      _endController.text = state.endDate.value;
      _endDate = _parseDate(state.endDate.value);
    }
  }

  void _pickStartDate() {
    DateTime tempDate = _startDate ?? DateTime.now();

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
              _startDate = tempDate;
              _endDate = null;
              _endController.clear();
              _startController.text = _formatDate(tempDate);
            });
            context.pop();
          },
          onChanged: (date) => tempDate = date,
        );
      },
    );
  }

  void _pickEndDate() {
    if (_startDate == null) return;

    DateTime tempDate = _endDate ?? _startDate!;

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
          minimumDate: _startDate,
          onSave: () {
            setState(() {
              _endDate = tempDate;
              _endController.text = _formatDate(tempDate);
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

  bool get _isValidRange => _startDate != null && _endDate != null;

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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            controller: _startController,
            readOnly: true,
            headerText: AppText.startDate,
            hintText: 'Select Start Date',
            suffixIcon: Iconsax.calendar,
            onTap: _pickStartDate,
          ),
          Styles.gap15,
          AppTextFormField(
            controller: _endController,
            readOnly: true,
            headerText: AppText.endDate,
            hintText: 'Select End Date',
            suffixIcon: Iconsax.calendar,
            onTap: _startDate == null ? null : _pickEndDate,
          ),
          Styles.gap30,
          Row(
            children: [
              Expanded(
                child: BlocBuilder<MedicationsBloc, MedicationsState>(
                  builder: (context, state) {
                    return AppOutlinedButton(
                      onPressed: () {
                        setState(() {
                          _startDate = null;
                          _endDate = null;
                          _startController.clear();
                          _endController.clear();
                        });
                        if (state.startDate.isPure && state.endDate.isPure) {
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
                    );
                  },
                ),
              ),
              Styles.gap10,
              Expanded(
                child: AppButton(
                  onPressed:
                      _isValidRange
                          ? () {
                            widget.onSaved(
                              _startController.text,
                              _endController.text,
                            );
                          }
                          : null,
                  name: Text(AppText.save, style: Styles.buttonStyle),
                ),
              ),
            ],
          ),
          Styles.gap10,
        ],
      ),
    );
  }
}
