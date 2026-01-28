import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/presentation/bloc/medication_form/medication_form_bloc.dart';
import 'package:dummy/features/health/presentation/bloc/medications/medications_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/utils/app_utils.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../widgets/medication/add_medication_fields.dart';
import 'medication_success_page.dart';

class EditMedicationPage extends StatelessWidget {
  const EditMedicationPage({super.key, required this.id});
  static const routeName = '/EditMedicationPage';
  final String id;
  static Route<T> route<T>(String id) {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.medicationFormBloc,
            child: EditMedicationPage(id: id),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      isAddScreen: true,
      title: AppText.editMedications,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: BlocConsumer<MedicationFormBloc, MedicationFormState>(
          listener: (context, state) {
            if (state.submitStatus.success) {
              context.read<MedicationsBloc>().add(
                MedicationsEvent.medications(null),
              );
              final totalDosage = AppUtil.calculateTotalDosage(
                startDate: DateTime.parse(state.startDate.value),
                endDate: DateTime.parse(state.endDate.value),
                dosagePerTime: int.parse(state.dosage.value),
                morningEnabled: state.morningTimeEnable,
                afternoonEnabled: state.afternoonTimeEnable,
                nightEnabled: state.nightTimeEnable,
                frequency: state.frequency.value?.value ?? 'Daily',
              );
              context.push(
                MedicationSuccessPage.route(
                  dosage: '$totalDosage ${state.dosageUnit.value?.value}',
                  startDate: AppUtil.convertToYYYYMMDD2(state.startDate.value),
                  endDate: AppUtil.convertToYYYYMMDD2(state.endDate.value),
                ),
              );
            }
          },
          builder: (context, state) {
            return AppButton(
              onPressed:
                  state.validation
                      ? () {
                        if (state.submitStatus.loading) {
                          return;
                        }
                        context.read<MedicationFormBloc>().add(
                          MedicationFormEvent.submit(id),
                        );
                      }
                      : () => AppAlert.showToast(
                        message: 'Provide Required Fields',
                      ),
              name: Text(
                AppText.save,
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.buttonTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            );
          },
        ),
      ),
      child: Padding(
        padding: Styles.edgeInsetsOnlyH10,
        child: AddMedicationForm(id: id),
      ),
    );
  }
}
