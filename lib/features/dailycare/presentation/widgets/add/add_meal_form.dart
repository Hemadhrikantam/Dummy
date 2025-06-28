import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/bloc/meal_form/meal_form_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/app_graber.dart';
import '../../../../../core/widgets/mandatory_field_widget.dart';
import '../../bloc/meals/meals_bloc.dart';
import '../save_cancel_widget.dart';

class AddMealForm extends StatefulWidget {
  const AddMealForm({super.key});

  @override
  State<AddMealForm> createState() => _AddMealFormState();
}

class _AddMealFormState extends State<AddMealForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<MealFormBloc>().add(MealFormEvent.init(petId ?? 0));
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
                    AppText.meal,
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
                          BlocBuilder<MealFormBloc, MealFormState>(
                            builder: (context, state) {
                              return CustomDropdownSearch(
                                items: state.mealTimes,
                                isMandatory: true,
                                onChanged: (value) {
                                  if (value == null) return;
                                  context.read<MealFormBloc>().add(
                                    MealFormEvent.mealTime(value),
                                  );
                                },
                                title: AppText.timeOfMeal,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocSelector<MealFormBloc, MealFormState, NotEmpty>(
                            selector: (state) {
                              return state.mealType;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                isMandatory: true,
                                headerText: AppText.mealType,
                                hintText: '...',
                                onChanged: (value) {
                                  context.read<MealFormBloc>().add(
                                    MealFormEvent.mealType(value),
                                  );
                                },
                              );
                            },
                          ),
                          Styles.gap15,
                          BlocSelector<MealFormBloc, MealFormState, NotEmpty>(
                            selector: (state) {
                              return state.notes;
                            },
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.value,
                                hintText: AppText.enter,
                                borderRadius: Styles.borderRadiusCircular25,
                                onChanged: (value) {
                                  context.read<MealFormBloc>().add(
                                    MealFormEvent.notes(value),
                                  );
                                },
                                maxLines: 7,
                                heigth: 140,
                                isMandatory: true,
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
                          BlocSelector<MealFormBloc, MealFormState, NotEmpty>(
                            selector: (state) {
                              return state.media;
                            },
                            builder: (context, state) {
                              return DottedBorderWidget(
                                paths:
                                    state.value.isNotEmpty ? [state.value] : [],
                                onAdd: (value) {
                                  context.read<MealFormBloc>().add(
                                    MealFormEvent.media(value),
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
                  BlocConsumer<MealFormBloc, MealFormState>(
                    listener: (context, state) {
                      if (state.submitStatus.success) {
                        context.read<MealsBloc>().add(
                          MealsEvent.meals(DateTime.now()),
                        );
                        context.pop();
                        BottomModels.addMealSuccessBottomSheet(context);
                      }
                    },
                    builder: (context, state) {
                      return SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  context.read<MealFormBloc>().add(
                                    const MealFormEvent.submit(),
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
    return BlocSelector<MealFormBloc, MealFormState, NotEmpty>(
      selector: (state) {
        return state.date;
      },
      builder: (context, state) {
        return AppCustomDateField(
          selectedDate:
              state.value.isNotEmpty ? DateTime.parse(state.value) : null,
          isMandatory: true,
          onChange: (value) {
            context.read<MealFormBloc>().add(
              MealFormEvent.date(value.toString()),
            );
          },
        );
      },
    );
  }
}
