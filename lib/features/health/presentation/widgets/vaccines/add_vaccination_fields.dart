import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_text.dart';
import '../../../../../core/models/drop_item.dart';
import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_dropdown.dart';
import '../../../../../core/widgets/custom_switch.dart';
import '../../../../../core/widgets/dotted_border_widget.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../dashboard/presentation/bloc/dashboard_bloc.dart';
import '../../bloc/vaccination_form/vaccination_form_bloc.dart';

part 'add_vaccination_form.dart';

class __VaccinationName extends StatelessWidget {
  const __VaccinationName();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<VaccinationFormBloc, VaccinationFormState, NotEmpty>(
      selector: (state) {
        return state.vaccinationName;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<VaccinationFormBloc>().add(
              VaccinationFormEvent.vaccinationName(value),
            );
          },
          headerText: AppText.vaccinationName,
          isMandatory: true,
        );
      },
    );
  }
}

class __Company extends StatelessWidget {
  const __Company();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<VaccinationFormBloc, VaccinationFormState, NotEmpty>(
      selector: (state) {
        return state.company;
      },
      builder: (context, state) {
        return AppTextFormField(
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<VaccinationFormBloc>().add(
              VaccinationFormEvent.company(value),
            );
          },
          headerText: AppText.company,
          isMandatory: true,
          initialValue: state.value,
        );
      },
    );
  }
}

class __DateAdministered extends StatefulWidget {
  const __DateAdministered();

  @override
  State<__DateAdministered> createState() => __DateAdministeredState();
}

class __DateAdministeredState extends State<__DateAdministered> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BlocSelector<VaccinationFormBloc, VaccinationFormState, NotEmpty>(
      selector: (state) {
        return state.dateAdministered;
      },
      builder: (context, state) {
        return AppCustomDateField(
          headerText: AppText.dateAdministered,
          onChange: (value) {
            context.read<VaccinationFormBloc>().add(
              VaccinationFormEvent.dateAdministered(value.toString()),
            );
          },
          selectedDate: DateTime.tryParse(state.value),
          isMandatory: true,
        );
      },
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
    return BlocSelector<VaccinationFormBloc, VaccinationFormState, NotEmpty>(
      selector: (state) {
        return state.dueDate;
      },
      builder: (context, state) {
        return AppCustomDateField(
          headerText: AppText.dueDate,
          selectedDate: DateTime.tryParse(state.value),
          isMandatory: true,
          onChange: (value) {
            context.read<VaccinationFormBloc>().add(
              VaccinationFormEvent.dueDate(value.toString()),
            );
          },
        );
      },
    );
  }
}

class __Frequency extends StatelessWidget {
  const __Frequency();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
      builder: (context, state) {
        return CustomStringDropdownSearch(
          items: state.frequencies,
          selectedItem: state.frequency.value,
          onChanged: (value) {
            if (value != null) {
              context.read<VaccinationFormBloc>().add(
                VaccinationFormEvent.frequency(value),
              );
            }
          },
          title: AppText.frequency,
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
        CustomSwitch(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
      ],
    );
  }
}

class __Reminder extends StatelessWidget {
  const __Reminder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: Styles.edgeInsetsOnlyH20,
              child: MandatoryFieldWidget(
                labelText: AppText.reminder,
                required: true,
              ),
            ),
            Styles.gap10,
            Flexible(
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
        return CustomDropdownSearch(
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
                  (index) => DropItemModel(
                    id: index + 1,
                    value: '${(index + 1) > 9 ? index + 1 : '0${index + 1}'}',
                  ),
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
                  (index) => DropItemModel(
                    id: index,
                    value: '${(index) > 9 ? index : '0${index}'}',
                  ),
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

class __Notes extends StatelessWidget {
  const __Notes();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.note.value,
          hintText: AppText.enter,
          borderRadius: Styles.borderRadiusCircular25,
          onChanged: (value) {
            context.read<VaccinationFormBloc>().add(
              VaccinationFormEvent.note(value),
            );
          },
          maxLines: 7,
          heigth: 140,
          headerText: AppText.notes,
          isMandatory: true,
        );
      },
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
        BlocSelector<VaccinationFormBloc, VaccinationFormState, NotEmpty>(
          selector: (state) {
            return state.media;
          },
          builder: (context, state) {
            return DottedBorderWidget(
              onAdd: (v) {
                context.read<VaccinationFormBloc>().add(
                  VaccinationFormEvent.media(v),
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
