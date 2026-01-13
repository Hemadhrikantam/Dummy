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
import 'package:dummy/features/dailycare/presentation/bloc/expense_form/expense_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/widgets/mandatory_field_widget.dart';
import '../../bloc/expenses/expenses_bloc.dart';

class AddExpensesForm extends StatefulWidget {
  const AddExpensesForm({super.key});

  @override
  State<AddExpensesForm> createState() => _AddExpensesFormState();
}

class _AddExpensesFormState extends State<AddExpensesForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<ExpenseFormBloc>().add(ExpenseFormEvent.init(petId ?? ''));
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
                    AppText.expenses,
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
                          BlocBuilder<ExpenseFormBloc, ExpenseFormState>(
                            builder: (context, state) {
                              return CustomStringDropdownSearch(
                                selectedItem: state.category.value,
                                onChanged: (value) {
                                  if (value == null) return;
                                  context.read<ExpenseFormBloc>().add(
                                    ExpenseFormEvent.category(value),
                                  );
                                },
                                title: AppText.category,
                                isMandatory: true,
                                items: state.categories,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocBuilder<ExpenseFormBloc, ExpenseFormState>(
                            builder: (context, state) {
                              return AppTextFormField(
                                initialValue: state.amount.value,
                                hintText: AppText.enter,
                                keyboardType: TextInputType.number,
                                borderRadius: Styles.borderRadiusCircular25,
                                onChanged: (value) {
                                  context.read<ExpenseFormBloc>().add(
                                    ExpenseFormEvent.amount(value.toString()),
                                  );
                                },
                                maxLines: 1,
                                heigth: 50,
                                headerText: AppText.amount,
                                isMandatory: true,
                              );
                            },
                          ),
                          Styles.gap10,
                          BlocSelector<
                            ExpenseFormBloc,
                            ExpenseFormState,
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
                                  context.read<ExpenseFormBloc>().add(
                                    ExpenseFormEvent.notes(value.toString()),
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
                            ExpenseFormBloc,
                            ExpenseFormState,
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
                                  context.read<ExpenseFormBloc>().add(
                                    ExpenseFormEvent.media(value),
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
                  BlocConsumer<ExpenseFormBloc, ExpenseFormState>(
                    listener: (context, state) {
                      if (state.submitStatus.success) {
                        context.read<ExpensesBloc>().add(
                          ExpensesEvent.expenses(DateTime.now()),
                        );
                        context.pop();
                        BottomModels.addExpensesSuccessBottomSheet(context);
                      }
                    },
                    builder: (context, state) {
                      return SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  if (state.submitStatus.loading) {
                                    return;
                                  }
                                  context.read<ExpenseFormBloc>().add(
                                    const ExpenseFormEvent.submit(),
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
    return BlocSelector<ExpenseFormBloc, ExpenseFormState, NotEmpty>(
      selector: (state) {
        return state.date;
      },
      builder: (context, state) {
        return AppCustomDateField(
          minDate: DateTime.now().subtract(const Duration(days: 30)),
          maxDate: DateTime.now(),
          headerText: AppText.date,
          selectedDate:
              state.value.isNotEmpty ? DateTime.parse(state.value) : null,
          isMandatory: true,
          onChange: (value) {
            context.read<ExpenseFormBloc>().add(
              ExpenseFormEvent.date(value.toString()),
            );
          },
        );
      },
    );
  }
}
