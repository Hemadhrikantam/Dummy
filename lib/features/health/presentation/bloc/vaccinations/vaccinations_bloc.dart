import 'package:dummy/core/enum/status.dart';
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
  VaccinationsBloc({required VaccinationsUsecases vaccinationsUsecases})
    : _vaccinationsUsecases = vaccinationsUsecases,
      super(VaccinationsState()) {
    on<_Vaccinations>(__vaccinations);
    on<_Filter>(__filter);
  }
  final VaccinationsUsecases _vaccinationsUsecases;

  Future<void> __vaccinations(
    _Vaccinations event,
    Emitter<VaccinationsState> emit,
  ) async {
    emit(state.copyWith(vaccinationsStatus: Status.loading));
    final result = await _vaccinationsUsecases(
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
      (success) => emit(
        state.copyWith(
          vaccinationsStatus: Status.success,
          vaccinations: success,
        ),
      ),
    );
  }

  void __filter(_Filter event, emit) {
    final dateAdministered = NotEmpty.dirty(value: event.dateAdministered);
    final dueDate = NotEmpty.dirty(value: event.dueDate);
    emit(state.copyWith(dateAdministered: dateAdministered, dueDate: dueDate));
  }
}
