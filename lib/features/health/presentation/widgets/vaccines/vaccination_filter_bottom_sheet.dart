import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/app_graber.dart';
import '../../bloc/vaccinations/vaccinations_bloc.dart';

class VaccinationFilterBottomSheet extends StatefulWidget {
  const VaccinationFilterBottomSheet({super.key, required this.onSaved});
  final Function(String startDate, String endDate) onSaved;

  @override
  State<VaccinationFilterBottomSheet> createState() =>
      _VaccinationFilterBottomSheet();
}

class _VaccinationFilterBottomSheet
    extends State<VaccinationFilterBottomSheet> {
  DateTime? selectedAdministerDate;
  DateTime? selectedDuedateDate;
  @override
  void initState() {
    super.initState();
    final state = context.read<VaccinationsBloc>().state;
    if (state.dateAdministered.value.isNotEmpty) {
      selectedAdministerDate = DateTime.tryParse(state.dateAdministered.value);
    }
    if (state.dueDate.value.isNotEmpty) {
      selectedDuedateDate = DateTime.tryParse(state.dueDate.value);
    }
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
          AppCustomDateField(
            hintText: 'Select Date Adminstered',
            isMandatory: true,
            headerText: AppText.dateAdministered,
            selectedDate: selectedAdministerDate,
            maxDate: selectedDuedateDate,
            onChange: (DateTime p1) {
              setState(() {
                selectedAdministerDate = p1;
              });
            },
          ),
          Styles.gap15,
          AppCustomDateField(
            hintText: 'Select Due Date',
            isMandatory: true,
            headerText: AppText.duedate,
            selectedDate: selectedDuedateDate,
            minDate: selectedAdministerDate,
            onChange: (DateTime p1) {
              setState(() {
                selectedDuedateDate = p1;
              });
            },
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
                          selectedAdministerDate = DateTime.tryParse(
                            state.dateAdministered.value,
                          );
                          selectedDuedateDate = DateTime.tryParse(
                            state.dueDate.value,
                          );
                        });
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
                              (selectedAdministerDate != null &&
                                      selectedDuedateDate != null)
                                  ? () {
                                    widget.onSaved(
                                      selectedAdministerDate!.toIso8601String(),
                                      selectedDuedateDate!.toIso8601String(),
                                    );
                                  }
                                  : () {},
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
