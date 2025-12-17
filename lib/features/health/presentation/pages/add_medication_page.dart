import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/presentation/bloc/medication_form/medication_form_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../bloc/medications/medications_bloc.dart';
import '../widgets/medication/add_medication_fields.dart';
import 'medication_success_page.dart';

class AddMedicationPage extends StatelessWidget {
  const AddMedicationPage({super.key});
  static const routeName = '/AddMedicationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.medicationFormBloc,
            child: const AddMedicationPage(),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.addMedications,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: BlocConsumer<MedicationFormBloc, MedicationFormState>(
          listener: (context, state) {
            if (state.submitStatus.success) {
              context.read<MedicationsBloc>().add(
                MedicationsEvent.medications(null),
              );
              int times = 0;
              if (state.morningTimeEnable) {
                times = times + 1;
              }
              if (state.afternoonTimeEnable) {
                times = times + 1;
              }
              if (state.nightTimeEnable) {
                times = times + 1;
              }
              final days = DateTime.parse(
                state.endDate.value,
              ).difference(DateTime.parse(state.startDate.value));
              final totalDosage =
                  int.parse(state.dosage.value) * times * days.inDays;
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
                        context.read<MedicationFormBloc>().add(
                          const MedicationFormEvent.submit(null),
                        );
                      }
                      : () => AppAlert.showToast(
                        message: 'Provide Required Fields',
                      ),
              name: Text(
                AppText.addMedications,
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
        padding: Styles.edgeInsetsOnlyH20,
        child: const AddMedicationForm(),
      ),
    );
  }
}
