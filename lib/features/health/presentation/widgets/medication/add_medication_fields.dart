import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/bloc/medication_form/medication_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_text.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_dropdown.dart';
import '../../../../../core/widgets/custom_switch.dart';
import '../../../../../core/widgets/dotted_border_widget.dart';

part 'add_medication_form.dart';

class __TabletName extends StatefulWidget {
  const __TabletName();

  @override
  State<__TabletName> createState() => _TabletNameState();
}

class _TabletNameState extends State<__TabletName> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final initialValue =
        context.read<MedicationFormBloc>().state.tabletName.value;
    _controller = TextEditingController(text: initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MedicationFormBloc, MedicationFormState>(
      listenWhen:
          (previous, current) =>
              previous.tabletName.value != current.tabletName.value,
      listener: (context, state) {
        if (_controller.text != state.tabletName.value) {
          _controller.text = state.tabletName.value;
        }
      },
      child: AppTextFormField(
        controller: _controller,
        onChanged: (value) {
          context.read<MedicationFormBloc>().add(
            MedicationFormEvent.tabletName(value),
          );
        },
        hintText: AppText.enter,
        headerText: AppText.name,
        isMandatory: true,
      ),
    );
  }
}

class __Company extends StatefulWidget {
  const __Company();

  @override
  State<__Company> createState() => _CompanyState();
}

class _CompanyState extends State<__Company> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final initialValue = context.read<MedicationFormBloc>().state.company.value;
    _controller = TextEditingController(text: initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MedicationFormBloc, MedicationFormState>(
      listenWhen:
          (previous, current) =>
              previous.company.value != current.company.value,
      listener: (context, state) {
        if (_controller.text != state.company.value) {
          _controller.text = state.company.value;
        }
      },
      child: AppTextFormField(
        controller: _controller,
        onChanged: (value) {
          context.read<MedicationFormBloc>().add(
            MedicationFormEvent.company(value),
          );
        },
        hintText: AppText.enter,
        headerText: AppText.company,
        isMandatory: true,
      ),
    );
  }
}

class __Dosage extends StatefulWidget {
  const __Dosage();

  @override
  State<__Dosage> createState() => __DosageState();
}

class __DosageState extends State<__Dosage> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initialValue = context.read<MedicationFormBloc>().state.company.value;
    controller = TextEditingController(text: initialValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // MandatoryFieldWidget(labelText: AppText.dosage, required: false),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: BlocConsumer<MedicationFormBloc, MedicationFormState>(
                listenWhen:
                    (previous, current) =>
                        previous.dosage.value != current.dosage.value,
                listener: (context, state) {
                  controller.text = state.dosage.value;
                },
                buildWhen:
                    (previous, current) =>
                        previous.dosage.value != current.dosage.value,
                builder: (context, state) {
                  return AppTextFormField(
                    controller: controller,
                    onChanged: (value) {
                      context.read<MedicationFormBloc>().add(
                        MedicationFormEvent.dosage(value),
                      );
                    },
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    hintText: AppText.enter,
                    headerText: AppText.dosage,
                    isMandatory: true,
                  );
                },
              ),
            ),
            Styles.gap10,
            __Tablets(),
          ],
        ),
      ],
    );
  }
}

class __StartDate extends StatefulWidget {
  const __StartDate();

  @override
  State<__StartDate> createState() => ___StartDate();
}

class ___StartDate extends State<__StartDate> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return AppCustomDateField(
          maxDate: DateTime.tryParse(state.endDate.value),
          onChange: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.startDate(value.toString()),
            );
          },
          headerText: AppText.startDate,
          selectedDate: DateTime.tryParse(state.startDate.value),
          isMandatory: true,
        );
      },
    );
  }
}

class __EndDate extends StatefulWidget {
  const __EndDate();

  @override
  State<__EndDate> createState() => __EndDateState();
}

class __EndDateState extends State<__EndDate> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return AppCustomDateField(
          minDate: DateTime.tryParse(state.startDate.value),
          onChange: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.endDate(value.toString()),
            );
          },
          headerText: AppText.endDate,
          selectedDate: DateTime.tryParse(state.endDate.value),
          isMandatory: true,
        );
      },
    );
  }
}

class __Remainder extends StatefulWidget {
  const __Remainder();

  @override
  State<__Remainder> createState() => __RemainderState();
}

class __RemainderState extends State<__Remainder> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppText.reminder,
          style: context.textTheme.labelLarge?.copyWith(
            color: AppColors.grey500,
          ),
        ),
        Styles.gap6,
        BlocSelector<MedicationFormBloc, MedicationFormState, bool>(
          selector: (state) {
            return state.reminder;
          },
          builder: (context, state) {
            return CustomSwitch(
              value: state,
              onChanged: (value) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.reminder(value),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class __Tablets extends StatelessWidget {
  const __Tablets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MedicationFormBloc, MedicationFormState>(
        builder: (context, state) {
          return CustomStringDropdownSearch(
            selectedItem: state.dosageUnit.value,
            title: '',
            items: state.dosageUnits,
            onChanged: (value) {
              if (value != null) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.dosageUnit(value),
                );
              }
            },
            label: AppText.select,
          );
        },
      ),
    );
  }
}

class __Frequency extends StatelessWidget {
  const __Frequency();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return CustomStringDropdownSearch(
          title: AppText.frequency,
          selectedItem: state.frequency.value,
          items: state.frequencies,
          onChanged: (value) {
            if (value != null) {
              context.read<MedicationFormBloc>().add(
                MedicationFormEvent.frequency(value),
              );
            }
          },
          label: AppText.select,
          isMandatory: true,
        );
      },
    );
  }
}

class __Notes extends StatelessWidget {
  __Notes();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return AppTextFormField(
          // initialValue: state.note.value,
          controller: controller..text = state.note.value,
          onChanged: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.note(value),
            );
          },
          hintText: AppText.enter,
          borderRadius: Styles.borderRadiusCircular25,
          maxLines: 7,
          heigth: 140,
          headerText: AppText.notes,
          isMandatory: true,
        );
      },
    );
  }
}

class __Morning extends StatefulWidget {
  const __Morning();

  @override
  State<__Morning> createState() => ___MorningState();
}

class ___MorningState extends State<__Morning> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return Row(
          children: [
            CustomCheckBox(
              isChecked: state.morningTimeEnable,
              label: '',
              onChanged: (value) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.morningTimeEnable(value),
                );
              },
            ),
            Expanded(
              child: CustomCard(
                padding: Styles.edgeInsetsAll06,
                borderRadius: Styles.borderRadiusCircular50,
                borderColor: AppColors.black.withOpacity(.1),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.morning,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class __Afternoon extends StatefulWidget {
  const __Afternoon();

  @override
  State<__Afternoon> createState() => ___AfternoonState();
}

class ___AfternoonState extends State<__Afternoon> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return Row(
          children: [
            CustomCheckBox(
              isChecked: state.afternoonTimeEnable,
              label: '',
              onChanged: (value) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.afternoonTimeEnable(value),
                );
              },
            ),
            Expanded(
              child: CustomCard(
                padding: Styles.edgeInsetsAll06,
                borderRadius: Styles.borderRadiusCircular50,
                borderColor: AppColors.black.withOpacity(.1),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.afternoon,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class __Night extends StatefulWidget {
  const __Night();

  @override
  State<__Night> createState() => ___NightState();
}

class ___NightState extends State<__Night> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return Row(
          children: [
            CustomCheckBox(
              isChecked: state.nightTimeEnable,
              label: '',
              onChanged: (value) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.nightTimeEnable(value),
                );
              },
            ),
            Expanded(
              child: CustomCard(
                padding: Styles.edgeInsetsAll06,
                borderRadius: Styles.borderRadiusCircular50,
                borderColor: AppColors.black.withOpacity(.1),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.night,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class TotalDosage extends StatelessWidget {
  const TotalDosage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return Container(
          padding: Styles.edgeInsetsAll10,
          decoration: BoxDecoration(
            borderRadius: Styles.borderRadiusCircular20,
            color: AppColors.stepperColor.withOpacity(.05),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.totalDosage,
                style: context.textTheme.labelLarge?.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              Styles.gap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    state.dosage.isPure || state.dosageUnit.isPure
                        ? '0 /\nServing'
                        : '${state.dosage.value} ${state.dosageUnit.value?.value} /\nServing',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.stepperColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.morningTimeEnable)
                        DayWithTimeWidget(
                          day: '${AppText.morning} ',
                          time: '- 09:00 AM IST',
                        ),
                      if (state.afternoonTimeEnable)
                        DayWithTimeWidget(
                          day: '${AppText.afternoon} ',
                          time: '- 01:00 PM IST',
                        ),
                      if (state.nightTimeEnable)
                        DayWithTimeWidget(
                          day: '${AppText.night} ',
                          time: '- 08:00 PM IST',
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class TotalDosageSubmit extends StatelessWidget {
  const TotalDosageSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styles.edgeInsetsAll10,
      decoration: BoxDecoration(
        borderRadius: Styles.borderRadiusCircular20,
        color: AppColors.stepperColor.withOpacity(.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.totalDosage,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColors.grey500,
            ),
          ),
          Styles.gap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 Tablets /\nServing',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.stepperColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DayWithTimeWidget(
                    day: '${AppText.morning} ',
                    time: '- 3.30 PM IST',
                  ),
                  DayWithTimeWidget(
                    day: '${AppText.afternoon} ',
                    time: '- 3.30 PM IST',
                  ),
                  DayWithTimeWidget(
                    day: '${AppText.night} ',
                    time: '- 3.30 PM IST',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayWithTimeWidget extends StatelessWidget {
  const DayWithTimeWidget({super.key, required this.day, required this.time});
  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: day,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: time,
            style: context.textTheme.labelMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class __Media extends StatelessWidget {
  const __Media();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MandatoryFieldWidget(labelText: AppText.media, required: true),
        Styles.gap10,
        BlocSelector<MedicationFormBloc, MedicationFormState, NotEmpty>(
          selector: (state) {
            return state.media;
          },
          builder: (context, state) {
            return DottedBorderWidget(
              onAdd: (v) {
                context.read<MedicationFormBloc>().add(
                  MedicationFormEvent.media(v),
                );
              },
              paths: state.value.isEmpty ? [] : [state.value],
            );
          },
        ),
      ],
    );
  }
}

class AddVaccinationBtn extends StatelessWidget {
  const AddVaccinationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      name: Text(
        AppText.addVaccination,
        style: context.textTheme.titleSmall?.copyWith(
          color: AppColors.buttonTextColor,
        ),
      ),
    );
  }
}
