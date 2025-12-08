import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_details/vaccination_details_bloc.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_log_form/vaccination_log_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/app_custom_check_box.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_switch.dart';
part 'vaccination_marking_fields.dart';

class VaccinationMarkingBottomSheetContent extends StatefulWidget {
  const VaccinationMarkingBottomSheetContent({
    super.key,
    this.onTap,
    required this.date,
  });
  final VoidCallback? onTap;
  final DateTime date;
  @override
  State<VaccinationMarkingBottomSheetContent> createState() =>
      _VaccinationMarkingBottomSheetContentState();
}

class _VaccinationMarkingBottomSheetContentState
    extends State<VaccinationMarkingBottomSheetContent> {
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final vaccinationId =
        context.read<VaccinationDetailsBloc>().state.vaccination?.id ?? '';
    context.read<VaccinationLogFormBloc>().add(
      VaccinationLogFormEvent.init(
        vaccinationId: vaccinationId,
        date: widget.date,
        check: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationDetailsBloc, VaccinationDetailsState>(
      builder: (context, vaccinestate) {
        return BlocBuilder<VaccinationLogFormBloc, VaccinationLogFormState>(
          builder: (context, formState) {
            return Padding(
              padding: Styles.edgeInsetsAll20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    vaccinestate.vaccination?.name ?? '',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.stepperColor,
                    ),
                  ),
                  Styles.gap10,
                  BlocSelector<
                    VaccinationLogFormBloc,
                    VaccinationLogFormState,
                    bool
                  >(
                    selector: (state) {
                      return state.check;
                    },
                    builder: (context, state) {
                      return CustomCheckBox(
                        isChecked: state,
                        label: AppText.markAsGiven,
                        onChanged: (value) {
                          context.read<VaccinationLogFormBloc>().add(
                            VaccinationLogFormEvent.isGiven(value),
                          );
                        },
                      );
                    },
                  ),
                  // Styles.gap10,
                  // CustomCard(
                  //   padding: Styles.edgeInsetsAll08,
                  //   backgroundColor: AppColors.buttonBackground.withOpacity(.6),
                  //   border: Border.all(color: Colors.transparent),
                  //   child: Row(
                  //     children: [
                  //       AppAssestsImage(
                  //         path: ImageResources.medsIcon,
                  //         height: context.height * .04,
                  //         width: context.height * .04,
                  //         boxFit: BoxFit.contain,
                  //       ),
                  //       Styles.gap10,
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             "${AppText.nextDueDate} : [${AppUtil.formatDate(widget.date)}]",
                  //             style: context.textTheme.titleMedium?.copyWith(
                  //               color: AppColors.buttonTextColor,
                  //               fontWeight: FontWeight.w500,
                  //               fontSize: 16,
                  //             ),
                  //           ),
                  //           Text(
                  //             AppText.autoSuggestedBasedOnAnnualFrequency,
                  //             style: context.textTheme.titleMedium?.copyWith(
                  //               color: AppColors.buttonTextColor,
                  //               fontWeight: FontWeight.w300,
                  //               fontSize: 12,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Styles.gap10,
                  __Notes(controller: _notesController),
                  Styles.gap10,
                  if (!formState.isFinalDoseCompleted)
                    __DueDate(
                      initialDate: formState.date ?? widget.date,
                      onChange:
                          (value) => context.read<VaccinationLogFormBloc>().add(
                            VaccinationLogFormEvent.dateChanged(value),
                          ),
                    ),
                  Styles.gap10,
                  Row(
                    children: [
                      CustomSwitch(
                        value: formState.isFinalDoseCompleted,
                        onChanged: (value) {
                          context.read<VaccinationLogFormBloc>().add(
                            VaccinationLogFormEvent.finalDoseCompleted(value),
                          );
                        },
                      ),
                      Styles.gap6,
                      Text(
                        AppText.finalDoseCompleted,
                        style: context.textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Styles.gap10,
                  Row(
                    children: [
                      Expanded(
                        child: AppTextButton(
                          onPressed: () {
                            context.pop();
                            // BottomModels.medicationDeleteBottomSheet(context);
                            // BottomModels.medicationTakingBottomSheet(context);
                          },
                          backgroundColor: AppColors.white,
                          borderColor: AppColors.grey400,
                          name: AppText.cancel,
                          textColor: AppColors.buttonTextColor,
                        ),
                      ),
                      Styles.gap10,
                      Expanded(
                        child: BlocConsumer<
                          VaccinationLogFormBloc,
                          VaccinationLogFormState
                        >(
                          listener: (context, state) {
                            if (state.submitStatus == Status.success) {
                              context.pop();
                              BottomModels.vaccinationMarkedSuccessBottomSheet(
                                context,
                              );
                            }
                          },
                          builder: (context, state) {
                            return AppButton(
                              onPressed: () {
                                // sync notes text into bloc before submit
                                context.read<VaccinationLogFormBloc>().add(
                                  VaccinationLogFormEvent.notesChanged(
                                    _notesController.text,
                                  ),
                                );
                                context.read<VaccinationLogFormBloc>().add(
                                  const VaccinationLogFormEvent.submit(),
                                );
                              },
                              name: Center(
                                child: Text(
                                  AppText.save,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(
                                        color: AppColors.buttonTextColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
