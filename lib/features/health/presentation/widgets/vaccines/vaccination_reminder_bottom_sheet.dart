import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/health/domain/entities/vaccination.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_form/vaccination_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_graber.dart';
import '../../../../dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';

class VaccinationReminderBottomSheet extends StatefulWidget {
  const VaccinationReminderBottomSheet({super.key, required this.vaccination});
  final PetVaccination vaccination;
  @override
  State<VaccinationReminderBottomSheet> createState() =>
      _VaccinationReminderBottomSheet();
}

class _VaccinationReminderBottomSheet
    extends State<VaccinationReminderBottomSheet> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<VaccinationFormBloc>().add(
      VaccinationFormEvent.init(petId ?? '', widget.vaccination.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
        builder: (context, state) {
          return state.initStatus.loading
              ? SizedBox(
                height: 280,
                width: context.width,
                child: LoadingWidget.circularProgressIndicatorCenter,
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap16,
                  __Reminder(widget.vaccination),
                  Styles.gap25,
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          showShadow: false,
                          backgroundColor: Colors.white,
                          name: Text(AppText.clear, style: Styles.buttonStyle),
                        ),
                      ),
                      Styles.gap10,
                      Expanded(
                        child: AppButton(
                          name: Text(AppText.save, style: Styles.buttonStyle),
                        ),
                      ),
                    ],
                  ),
                  Styles.gap10,
                ],
              );
        },
      ),
    );
  }
}

class __Reminder extends StatelessWidget {
  const __Reminder(this.vaccination);
  final PetVaccination vaccination;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: Styles.edgeInsetsOnlyH20,
                child: Text(
                  AppText.reminder,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
                builder: (context, state) {
                  return CustomDropdownSearch(
                    items: state.reminderTimezones,
                    selectedItem: state.reminderTimezone.value,
                    onChanged: (value) {
                      if (value != null) {
                        context.read<VaccinationFormBloc>().add(
                          VaccinationFormEvent.reminderTimezone(value),
                        );
                      }
                    },
                    title: '',
                    label: 'IST',
                  );
                },
              ),
            ),
          ],
        ),
        __Tablets(),
        Styles.gap10,
        __Time(),
      ],
    );
  }
}

class __Tablets extends StatelessWidget {
  const __Tablets();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
      builder: (context, state) {
        return CustomStringDropdownSearch(
          items: state.reminderBefores,
          selectedItem: state.reminderBefore.value,
          onChanged: (value) {
            if (value != null) {
              context.read<VaccinationFormBloc>().add(
                VaccinationFormEvent.reminderBefore(value),
              );
            }
          },
          title: '',
          label: 'One Day before the due date',
        );
      },
    );
  }
}

class __Time extends StatelessWidget {
  const __Time();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: CustomDropdownSearch(
                selectedItem: state.reminderHour.value,
                items: List.generate(
                  12,
                  (index) =>
                      DropItemModel(id: index + 1, value: '${index + 1}'),
                ),
                title: '',
                label: 'HH',
                onChanged: (v) {
                  if (v != null) {
                    context.read<VaccinationFormBloc>().add(
                      VaccinationFormEvent.reminderHour(v),
                    );
                  }
                },
              ),
            ),
            Styles.gap10,
            Expanded(
              child: CustomDropdownSearch(
                selectedItem: state.reminderMin.value,
                items: List.generate(
                  60,
                  (index) => DropItemModel(id: index + 1, value: '$index'),
                ),
                title: '',
                label: 'MM',
                onChanged: (v) {
                  if (v != null) {
                    context.read<VaccinationFormBloc>().add(
                      VaccinationFormEvent.reminderMin(v),
                    );
                  }
                },
              ),
            ),
            Styles.gap10,
            Expanded(
              child: CustomDropdownSearch(
                selectedItem: state.reminderAmPm.value,
                items: [
                  DropItemModel(id: 1, value: 'AM'),
                  DropItemModel(id: 2, value: 'PM'),
                ],
                title: '',
                label: 'PM',
                onChanged: (v) {
                  if (v != null) {
                    context.read<VaccinationFormBloc>().add(
                      VaccinationFormEvent.reminderAmPm(v),
                    );
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
