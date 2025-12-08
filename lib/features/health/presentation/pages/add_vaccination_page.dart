import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/presentation/bloc/vaccinations/vaccinations_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_text.dart';
import '../../../../core/utils/toast_message.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../bloc/vaccination_form/vaccination_form_bloc.dart';
import '../widgets/vaccines/add_vaccination_fields.dart';
import 'vaccination_success_page.dart';

class AddVaccinationPage extends StatelessWidget {
  const AddVaccinationPage({super.key});
  static const routeName = '/AddVaccinationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.vaccinationFormBloc,
            child: const AddVaccinationPage(),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.addVaccination,
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
                  dueDate:
                      state.dueDate.isValid
                          ? DateTime.parse(state.dueDate.value)
                          : null,
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
                        context.read<VaccinationFormBloc>().add(
                          const VaccinationFormEvent.submit(),
                        );
                      }
                      : () => AppAlert.showToast(
                        message: 'Provide Required Fields',
                      ),
              name: Text(
                AppText.addVaccination,
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
        child: const AddVaccinationForm(),
      ),
    );
  }
}
