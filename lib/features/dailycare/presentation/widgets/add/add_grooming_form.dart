import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/bloc/grooming_form/grooming_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/widgets/mandatory_field_widget.dart';
import '../../../../profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import '../../bloc/groomings/groomings_bloc.dart';

class AddGroomingForm extends StatefulWidget {
  const AddGroomingForm({super.key});
  @override
  State<AddGroomingForm> createState() => _AddGroomingFormState();
}

class _AddGroomingFormState extends State<AddGroomingForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<GroomingFormBloc>().add(GroomingFormEvent.init(petId ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.70,
      minChildSize: 0.70,
      maxChildSize: 0.80,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.69,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap15,
                  Text(
                    AppText.grooming,
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
                          BlocBuilder<GroomingFormBloc, GroomingFormState>(
                            builder: (context, state) {
                              return CustomStringDropdownSearch(
                                selectedItem: state.groomingType.value,
                                onChanged: (value) {
                                  if (value != null) {
                                    context.read<GroomingFormBloc>().add(
                                      GroomingFormEvent.groomingType(value),
                                    );
                                  }
                                },
                                items: state.groomingTypes,
                                title: AppText.type,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocSelector<
                            GroomingFormBloc,
                            GroomingFormState,
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
                                  context.read<GroomingFormBloc>().add(
                                    GroomingFormEvent.notes(value.toString()),
                                  );
                                },
                                maxLines: 6,
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
                            GroomingFormBloc,
                            GroomingFormState,
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
                                  context.read<GroomingFormBloc>().add(
                                    GroomingFormEvent.media(value),
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
                  BlocConsumer<GroomingFormBloc, GroomingFormState>(
                    listener: (context, state) {
                      if (state.submitStatus.success) {
                        context.read<GroomingsBloc>().add(
                          GroomingsEvent.groomings(DateTime.now()),
                        );
                        context.pop();
                        BottomModels.addGroomingSuccessBottomSheet(context, () {
                          //   context.read<PetDairyBloc>().add(
                          //   PetDairyEvent.addMemory(
                          //     state.petId,
                          //     'grooming',
                          //     state.addedGroomingId,
                          //     title,
                          //     description,
                          //   ),
                          // );
                        });
                      }
                    },
                    builder: (context, state) {
                      return SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  context.read<GroomingFormBloc>().add(
                                    const GroomingFormEvent.submit(),
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
  @override
  State<_Date> createState() => __Date();
}

class __Date extends State<_Date> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<GroomingFormBloc, GroomingFormState, NotEmpty>(
      selector: (state) {
        return state.date;
      },
      builder: (context, state) {
        return AppCustomDateField(
          minDate: DateTime.now().subtract(const Duration(days: 30)),
          maxDate: DateTime.now(),
          headerText: AppText.date,
          selectedDate:
              state.value.isEmpty ? null : DateTime.parse(state.value),
          onChange: (value) {
            context.read<GroomingFormBloc>().add(
              GroomingFormEvent.date(value.toString()),
            );
          },
          isMandatory: true,
        );
      },
    );
  }
}
