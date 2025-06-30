import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/medications_usecases.dart';

part 'medications_event.dart';
part 'medications_state.dart';
part 'medications_bloc.freezed.dart';

class MedicationsBloc extends Bloc<MedicationsEvent, MedicationsState> {
  MedicationsBloc({required MedicationsUsecases medicationsUsecases})
    : _medicationsUsecases = medicationsUsecases,
      super(MedicationsState()) {
    on<_Medications>(__medications);
  }
  final MedicationsUsecases _medicationsUsecases;

  Future<void> __medications(
    _Medications event,
    Emitter<MedicationsState> emit,
  ) async {
    emit(state.copyWith(medicationsStatus: Status.loading));
    final result = await _medicationsUsecases(event.key);

    result.fold(
      (failure) => emit(state.copyWith(medicationsStatus: Status.error)),
      (success) => emit(
        state.copyWith(medicationsStatus: Status.success, medications: success),
      ),
    );
  }
}
