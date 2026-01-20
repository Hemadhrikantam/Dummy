import 'package:dummy/core/enum/status.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/domain/usecases/delete_vaccination_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../domain/entities/vaccination.dart';
import '../../../domain/usecases/vaccinations_usecases.dart';

part 'vaccinations_event.dart';
part 'vaccinations_state.dart';
part 'vaccinations_bloc.freezed.dart';

class VaccinationsBloc extends Bloc<VaccinationsEvent, VaccinationsState> {
  VaccinationsBloc({
    required VaccinationsUsecases vaccinationsUsecases,
    required DeleteVaccinationUsecases deleteVaccinationUsecases,
  }) : _vaccinationsUsecases = vaccinationsUsecases,
       _deleteVaccinationUsecases = deleteVaccinationUsecases,
       super(VaccinationsState()) {
    on<_Vaccinations>(__vaccinations);
    on<_Filter>(__filter);
    on<_Delete>(__delete);
  }
  final VaccinationsUsecases _vaccinationsUsecases;
  final DeleteVaccinationUsecases _deleteVaccinationUsecases;
  Future<void> __vaccinations(
    _Vaccinations event,
    Emitter<VaccinationsState> emit,
  ) async {
    emit(state.copyWith(vaccinationsStatus: Status.loading));
    final result = await _vaccinationsUsecases(
      currentContext.read<DashboardBloc>().state.selectedPet?.id ?? '',
      event.key,
      state.dateAdministered.isValid
          ? AppUtil.convertToYYYYMMDD(state.dateAdministered.value)
          : null,
      state.dueDate.isValid
          ? AppUtil.convertToYYYYMMDD(state.dueDate.value)
          : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(vaccinationsStatus: Status.error)),
      (success) {
        final key = event.key?.toLowerCase() ?? '';
        final filtered =
            success
                .where(
                  (vaccination) =>
                      (vaccination.notes.toLowerCase().contains(key)) ||
                      (vaccination.companyName.toLowerCase().contains(key)) ||
                      (vaccination.name.toLowerCase().contains(key)),
                )
                .toList();
        emit(
          state.copyWith(
            vaccinationsStatus: Status.success,
            vaccinations: filtered,
          ),
        );
      },
    );
  }

  void __filter(_Filter event, emit) {
    final dateAdministered =
        event.dateAdministered == null
            ? NotEmpty.pure()
            : NotEmpty.dirty(value: event.dateAdministered!);
    final dueDate =
        event.dueDate == null
            ? NotEmpty.pure()
            : NotEmpty.dirty(value: event.dueDate!);
    emit(state.copyWith(dateAdministered: dateAdministered, dueDate: dueDate));
  }

  Future<void> __delete(_Delete event, emit) async {
    await _deleteVaccinationUsecases(id: event.id).then((response) {
      if (response.isRight()) {
        emit(
          state.copyWith(
            vaccinations:
                state.vaccinations
                    .where((vaccination) => vaccination.id != event.id)
                    .toList(),
          ),
        );
      }
    });
  }
}
