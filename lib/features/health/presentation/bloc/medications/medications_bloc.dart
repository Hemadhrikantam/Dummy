import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/usecases/delete_medication_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../domain/usecases/medications_usecases.dart';

part 'medications_event.dart';
part 'medications_state.dart';
part 'medications_bloc.freezed.dart';

class MedicationsBloc extends Bloc<MedicationsEvent, MedicationsState> {
  MedicationsBloc({
    required MedicationsUsecases medicationsUsecases,
    required DeleteMedicationUsecases deleteMedicationUsecases,
  }) : _medicationsUsecases = medicationsUsecases,
       _deleteMedicationUsecases = deleteMedicationUsecases,
       super(MedicationsState()) {
    on<_Medications>(__medications);
    on<_Filter>(__filter);
    on<_Delete>(_deleteMedication);
  }
  final MedicationsUsecases _medicationsUsecases;
  final DeleteMedicationUsecases _deleteMedicationUsecases;
  Future<void> __medications(
    _Medications event,
    Emitter<MedicationsState> emit,
  ) async {
    emit(state.copyWith(medicationsStatus: Status.loading));
    final result = await _medicationsUsecases(
      event.key,
      state.startDate.isValid
          ? AppUtil.convertToYYYYMMDD(state.startDate.value)
          : null,
      state.endDate.isValid
          ? AppUtil.convertToYYYYMMDD(state.endDate.value)
          : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(medicationsStatus: Status.error)),
      (success) => emit(
        state.copyWith(medicationsStatus: Status.success, medications: success),
      ),
    );
  }

  void __filter(_Filter event, emit) {
    final startDate = NotEmpty.dirty(value: event.startDate);
    final endDate = NotEmpty.dirty(value: event.endDate);
    emit(state.copyWith(startDate: startDate, endDate: endDate));
  }

  void _deleteMedication(_Delete event, emit) {
    _deleteMedicationUsecases(id: event.id);
    emit(
      state.copyWith(
        medicationsStatus: Status.success,
        medications:
            state.medications
                .where((medication) => medication.id != event.id)
                .toList(),
      ),
    );
  }
}
