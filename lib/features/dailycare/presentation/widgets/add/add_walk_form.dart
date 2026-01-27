import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/bloc/walk_form/walk_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/utils/toast_message.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../../core/widgets/mandatory_field_widget.dart';
import '../../bloc/walks/walks_bloc.dart';

class AddWalkForm extends StatefulWidget {
  const AddWalkForm({super.key});

  @override
  State<AddWalkForm> createState() => _AddWalkFormState();
}

class _AddWalkFormState extends State<AddWalkForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<WalkFormBloc>().add(WalkFormEvent.init(petId ?? ''));
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
                    AppText.walks,
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
                          BlocBuilder<WalkFormBloc, WalkFormState>(
                            builder: (context, state) {
                              return CustomDropdownSearch(
                                items: state.durations,
                                isMandatory: true,
                                onChanged: (value) {
                                  context.read<WalkFormBloc>().add(
                                    WalkFormEvent.duration(value!),
                                  );
                                },
                                selectedItem: state.duration.value,
                                title: AppText.duration,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocSelector<WalkFormBloc, WalkFormState, NotEmpty>(
                            selector: (state) {
                              return state.location;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                isMandatory: true,
                                onChanged: (value) {
                                  context.read<WalkFormBloc>().add(
                                    WalkFormEvent.location(value),
                                  );
                                },
                                hintText: '...',
                                headerText: AppText.location,
                              );
                            },
                          ),
                          Styles.gap15,
                          BlocSelector<WalkFormBloc, WalkFormState, NotEmpty>(
                            selector: (state) {
                              return state.notes;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                hintText: AppText.enter,
                                isMandatory: true,
                                borderRadius: Styles.borderRadiusCircular25,
                                onChanged: (value) {
                                  context.read<WalkFormBloc>().add(
                                    WalkFormEvent.notes(value),
                                  );
                                },
                                maxLines: 7,
                                heigth: 140,
                                headerText: AppText.notes,
                              );
                            },
                          ),
                          Styles.gap15,
                          MandatoryFieldWidget(
                            labelText: AppText.media,
                            required: true,
                          ),
                          Styles.gap6,
                          BlocSelector<WalkFormBloc, WalkFormState, NotEmpty>(
                            selector: (state) {
                              return state.media;
                            },
                            builder: (context, state) {
                              return DottedBorderWidget(
                                paths:
                                    state.value.isNotEmpty ? [state.value] : [],
                                onAdd: (value) {
                                  context.read<WalkFormBloc>().add(
                                    WalkFormEvent.media(value),
                                  );
                                },
                              );
                            },
                          ),

                          Styles.gap20,
                        ],
                      ),
                    ),
                  ),
                  Styles.gap10,
                  BlocConsumer<WalkFormBloc, WalkFormState>(
                    listener: (context, state) {
                      if (state.submitStatus.success) {
                        context.read<WalksBloc>().add(
                          WalksEvent.walks(DateTime.now()),
                        );
                        context.pop();
                        BottomModels.addWalkSuccessBottomSheet(context);
                      }
                    },
                    builder: (context, state) {
                      if (state.submitStatus == Status.loading) {
                        return LoadingWidget
                            .circularProgressIndicatorWithOutRowSmall;
                      }
                      return SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  if (state.submitStatus.loading) {
                                    return;
                                  }
                                  context.read<WalkFormBloc>().add(
                                    const WalkFormEvent.submit(),
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
    return BlocSelector<WalkFormBloc, WalkFormState, NotEmpty>(
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
          headerText: AppText.date,
          onChange: (value) {
            context.read<WalkFormBloc>().add(
              WalkFormEvent.date(value.toString()),
            );
          },
        );
      },
    );
  }
}
