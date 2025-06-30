import 'dart:math';

import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
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

class __TabletName extends StatelessWidget {
  const __TabletName();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MedicationFormBloc, MedicationFormState, NotEmpty>(
      selector: (state) {
        return state.tabletName;
      },
      builder: (context, state) {
        return AppTextFormField(
          controller: TextEditingController()..text = state.value,
          onChanged: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.tabletName(value),
            );
          },
          hintText: AppText.enter,
          headerText: AppText.tabletName,
        );
      },
    );
  }
}

class __Company extends StatelessWidget {
  const __Company();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MedicationFormBloc, MedicationFormState, NotEmpty>(
      selector: (state) {
        return state.company;
      },
      builder: (context, state) {
        return AppTextFormField(
          controller: TextEditingController()..text = state.value,
          onChanged: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.company(value),
            );
          },
          hintText: AppText.enter,
          headerText: AppText.company,
        );
      },
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
    return BlocSelector<MedicationFormBloc, MedicationFormState, NotEmpty>(
      selector: (state) {
        return state.startDate;
      },
      builder: (context, state) {
        return AppCustomDateField(
          onChange: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.startDate(value.toString()),
            );
          },
          headerText: AppText.startDate,
          selectedDate: DateTime.tryParse(state.value),
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
    return BlocSelector<MedicationFormBloc, MedicationFormState, NotEmpty>(
      selector: (state) {
        return state.endDate;
      },
      builder: (context, state) {
        return AppCustomDateField(
          onChange: (value) {
            context.read<MedicationFormBloc>().add(
              MedicationFormEvent.endDate(value.toString()),
            );
          },
          headerText: AppText.endDate,
          selectedDate: DateTime.tryParse(state.value),
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

class __Dosage extends StatelessWidget {
  const __Dosage();

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
              child: BlocSelector<
                MedicationFormBloc,
                MedicationFormState,
                NotEmpty
              >(
                selector: (state) {
                  return state.dosage;
                },
                builder: (context, state) {
                  return AppTextFormField(
                    controller: TextEditingController()..text = state.value,
                    onChanged: (value) {
                      context.read<MedicationFormBloc>().add(
                        MedicationFormEvent.dosage(value),
                      );
                    },
                    keyboardType: TextInputType.numberWithOptions(),
                    hintText: AppText.enter,
                    headerText: AppText.dosage,
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

class __Tablets extends StatelessWidget {
  const __Tablets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MedicationFormBloc, MedicationFormState>(
        builder: (context, state) {
          return CustomDropdownSearch(
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
        return CustomDropdownSearch(
          title: AppText.frequency,
          items: state.frequencies,
          onChanged: (value) {
            if (value != null) {
              context.read<MedicationFormBloc>().add(
                MedicationFormEvent.frequency(value),
              );
            }
          },
          label: AppText.select,
        );
      },
    );
  }
}

class __Notes extends StatelessWidget {
  const __Notes();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return AppTextFormField(
          controller: TextEditingController()..text = state.note.value,
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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: BlocBuilder<MedicationFormBloc, MedicationFormState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.morning,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.morningTimeHour.value,
                        items: List.generate(12, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i + 1).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.morningTimeHour(value),
                            );
                          }
                        },
                        label: AppText.hh,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.morningTimeMin.value,
                        items: List.generate(60, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.morningTimeMin(value),
                            );
                          }
                        },
                        label: AppText.mm,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class __Afternoon extends StatefulWidget {
  const __Afternoon();

  @override
  State<__Afternoon> createState() => ___AfternoonState();
}

class ___AfternoonState extends State<__Afternoon> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: BlocBuilder<MedicationFormBloc, MedicationFormState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.afternoon,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.afternoonTimeHour.value,
                        items: List.generate(12, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i + 1).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.afternoonTimeHour(value),
                            );
                          }
                        },
                        label: AppText.hh,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.afternoonTimeMin.value,
                        items: List.generate(60, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.afternoonTimeMin(value),
                            );
                          }
                        },
                        label: AppText.mm,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class __Night extends StatefulWidget {
  const __Night();

  @override
  State<__Night> createState() => ___NightState();
}

class ___NightState extends State<__Night> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: BlocBuilder<MedicationFormBloc, MedicationFormState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        AppText.night,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.nightTimeHour.value,
                        items: List.generate(12, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i + 1).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.nightTimeHour(value),
                            );
                          }
                        },
                        label: AppText.hh,
                      ),
                    ),
                    Styles.gap4,
                    Expanded(
                      flex: 5,
                      child: CustomDropdownSearch(
                        title: '',
                        selectedItem: state.nightTimeMin.value,
                        items: List.generate(60, (i) {
                          return DropItemModel(
                            id: i + 1,
                            value: (i).toString(),
                          );
                        }),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<MedicationFormBloc>().add(
                              MedicationFormEvent.nightTimeMin(value),
                            );
                          }
                        },
                        label: AppText.mm,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
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
                    '${state.dosage.value} ${state.dosageUnit.value?.value} /\nServing',
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
      },
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
        MandatoryFieldWidget(labelText: AppText.media, required: false),
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
              paths:state.value.isEmpty?[]: [state.value],
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
