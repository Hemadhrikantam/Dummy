import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';

import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/bloc/deworming_form/deworming_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/widgets/mandatory_field_widget.dart';
import '../../bloc/dewormings/dewormings_bloc.dart';

class AddDewormingForm extends StatefulWidget {
  const AddDewormingForm({super.key});

  @override
  State<AddDewormingForm> createState() => _AddDewormingFormState();
}

class _AddDewormingFormState extends State<AddDewormingForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<DewormingFormBloc>().add(DewormingFormEvent.init(petId ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.80,
      minChildSize: 0.80,
      maxChildSize: 0.80,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.79,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap15,
                  Text(
                    AppText.deworming,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _Date(),
                          Styles.gap15,
                          BlocSelector<
                            DewormingFormBloc,
                            DewormingFormState,
                            NotEmpty
                          >(
                            selector: (state) {
                              return state.productName;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                isMandatory: true,
                                onChanged: (value) {
                                  context.read<DewormingFormBloc>().add(
                                    DewormingFormEvent.productName(
                                      value.toString(),
                                    ),
                                  );
                                },
                                hintText: '...',
                                headerText: AppText.productName,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocBuilder<DewormingFormBloc, DewormingFormState>(
                            builder: (context, state) {
                              return CustomStringDropdownSearch(
                                items: state.frequencies,
                                selectedItem: state.frequency.value,
                                onChanged: (value) {
                                  if (value != null) {
                                    context.read<DewormingFormBloc>().add(
                                      DewormingFormEvent.frequency(value),
                                    );
                                  }
                                },
                                title: AppText.frequency,
                                isMandatory: true,
                              );
                            },
                          ),

                          BlocSelector<
                            DewormingFormBloc,
                            DewormingFormState,
                            NotEmpty
                          >(
                            selector: (state) {
                              return state.dueDate;
                            },
                            builder: (context, state) {
                              return AppCustomDateField(
                                headerText: AppText.duedate,
                                selectedDate:
                                    state.value.isNotEmpty
                                        ? DateTime.parse(state.value)
                                        : null,
                                isMandatory: true,
                                onChange: (value) {
                                  context.read<DewormingFormBloc>().add(
                                    DewormingFormEvent.dueDate(
                                      value.toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          Styles.gap15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 2,
                                child: MandatoryFieldWidget(
                                  labelText: AppText.reminder,
                                  required: true,
                                ),
                              ),
                              Styles.gap10,
                              Flexible(
                                child: BlocBuilder<
                                  DewormingFormBloc,
                                  DewormingFormState
                                >(
                                  builder: (context, state) {
                                    return CustomDropdownSearch(
                                      items: state.reminderTimezones,
                                      selectedItem:
                                          state.reminderTimezone.value,
                                      onChanged: (value) {
                                        if (value != null) {
                                          context.read<DewormingFormBloc>().add(
                                            DewormingFormEvent.reminderTimezone(
                                              value,
                                            ),
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

                          Styles.gap6,
                          Styles.gap10,
                          BlocBuilder<DewormingFormBloc, DewormingFormState>(
                            builder: (context, state) {
                              return CustomStringDropdownSearch(
                                items: state.reminderBefores,
                                selectedItem: state.reminderBefore.value,
                                onChanged: (value) {
                                  if (value != null) {
                                    context.read<DewormingFormBloc>().add(
                                      DewormingFormEvent.reminderBefore(value),
                                    );
                                  }
                                },
                                title: '',
                                label: 'One Day before the due date',
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocBuilder<DewormingFormBloc, DewormingFormState>(
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
                                          value:
                                              '${(index + 1) > 9 ? index + 1 : '0${index + 1}'}',
                                        ),
                                      ),
                                      title: '',
                                      label: 'HH',
                                      onChanged: (v) {
                                        if (v != null) {
                                          context.read<DewormingFormBloc>().add(
                                            DewormingFormEvent.reminderHour(v),
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
                                          id: index + 1,
                                          value:
                                              '${(index) > 9 ? index : '0$index'}',
                                        ),
                                      ),
                                      title: '',
                                      label: 'MM',
                                      onChanged: (v) {
                                        if (v != null) {
                                          context.read<DewormingFormBloc>().add(
                                            DewormingFormEvent.reminderMin(v),
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
                                          context.read<DewormingFormBloc>().add(
                                            DewormingFormEvent.reminderAmPm(v),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Styles.gap15,
                          BlocSelector<
                            DewormingFormBloc,
                            DewormingFormState,
                            NotEmpty
                          >(
                            selector: (state) {
                              return state.notes;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                hintText: AppText.enter,
                                borderRadius: Styles.borderRadiusCircular25,
                                onChanged: (value) {
                                  context.read<DewormingFormBloc>().add(
                                    DewormingFormEvent.notes(value.toString()),
                                  );
                                },
                                maxLines: 7,
                                heigth: 140,
                                headerText: AppText.notes,
                                isMandatory: true,
                              );
                            },
                          ),
                          Styles.gap15,
                          MandatoryFieldWidget(
                            labelText: AppText.media,
                            required: true,
                          ),
                          Styles.gap6,
                          BlocSelector<
                            DewormingFormBloc,
                            DewormingFormState,
                            NotEmpty
                          >(
                            selector: (state) {
                              return state.media;
                            },
                            builder: (context, state) {
                              return DottedBorderWidget(
                                paths:
                                    state.value.isNotEmpty ? [state.value] : [],
                                onAdd: (value) {
                                  context.read<DewormingFormBloc>().add(
                                    DewormingFormEvent.media(value),
                                  );
                                },
                              );
                            },
                          ),

                          Styles.gap30,
                        ],
                      ),
                    ),
                  ),
                  Styles.gap10,
                  BlocConsumer<DewormingFormBloc, DewormingFormState>(
                    listener: (context, state) {
                      if (state.submitStatus.success) {
                        context.read<DewormingsBloc>().add(
                          DewormingsEvent.dewormings(DateTime.now()),
                        );
                        context.pop();
                        BottomModels.addDewormingSuccessBottomSheet(context);
                      }
                    },
                    builder: (context, state) {
                      return SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  context.read<DewormingFormBloc>().add(
                                    const DewormingFormEvent.submit(),
                                  );
                                }
                                : () => AppAlert.showToast(
                                  message: 'Provide Required Fields',
                                ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Date extends StatefulWidget {
  const _Date();
  @override
  State<_Date> createState() => __Date();
}

class __Date extends State<_Date> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<DewormingFormBloc, DewormingFormState, NotEmpty>(
      selector: (state) {
        return state.date;
      },
      builder: (context, state) {
        return AppCustomDateField(
          minDate: DateTime.now().subtract(const Duration(days: 30)),
          maxDate: DateTime.now(),
          selectedDate:
              state.value.isNotEmpty ? DateTime.parse(state.value) : null,
          isMandatory: true,
          onChange: (value) {
            context.read<DewormingFormBloc>().add(
              DewormingFormEvent.date(value.toString()),
            );
          },
        );
      },
    );
  }
}
