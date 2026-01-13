import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_form/vaccination_form_bloc.dart';
import 'package:dummy/features/health/presentation/bloc/vaccinations/vaccinations_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_text.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../widgets/vaccines/add_vaccination_fields.dart';
import 'vaccination_success_page.dart';

class EditVaccinationPage extends StatelessWidget {
  const EditVaccinationPage({super.key, required this.id});
  static const routeName = '/EditVaccinationPage';
  final String id;
  static Route<T> route<T>({required String id}) {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.vaccinationFormBloc,
            child: EditVaccinationPage(id: id),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.editVaccination,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: BlocConsumer<VaccinationFormBloc, VaccinationFormState>(
          listener: (context, state) {
            if (state.submitStatus.success) {
              context.read<VaccinationsBloc>().add(
                VaccinationsEvent.vaccinations(null),
              );
              context.pop();
              context.push(
                VaccinationSuccessPage.route(
                  vaccinationName: state.vaccinationName.value,
                  companyName: state.company.value,
                  dueDate: DateTime.parse(state.dueDate.value),
                  dateAdministered: DateTime.parse(
                    state.dateAdministered.value,
                  ),
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
                        context.read<VaccinationFormBloc>().add(
                          VaccinationFormEvent.submit(id: id),
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
      child: AddVaccinationForm(id: id),
    );
  }
}
