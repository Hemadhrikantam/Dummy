import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';
import 'package:dummy/features/health/domain/entities/medication_log.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_date_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_logs_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/update_medication_date_usecases.dart';
import 'package:dummy/features/health/domain/usecases/update_medication_log_usecases.dart';
import 'package:dummy/features/health/presentation/bloc/medications/medications_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication_details_event.dart';
part 'medication_details_state.dart';
part 'medication_details_bloc.freezed.dart';

class MedicationDetailsBloc
    extends Bloc<MedicationDetailsEvent, MedicationDetailsState> {
  MedicationDetailsBloc({
    required GetMedicationUsecases getMedicationUsecases,
    required GetMedicationLogsUsecases dateUsecases,
    required UpdateMedicationLogUsecases updateLogUsecases,
    required UpdateMedicationDateUsecases editDateUsecases,
  }) : _getMedicationUsecases = getMedicationUsecases,
       _getLogsUsecases = dateUsecases,
       _updateLogUsecases = updateLogUsecases,
       _editDateUsecases = editDateUsecases,
       super(MedicationDetailsState()) {
    on<_Init>(__init);
    on<_LoadLogs>(__loadLogs);
    on<_UpdateLog>(__updateLog);
    on<_UpdateMedicationLog>(__updateMedicationLog);
  }
  final GetMedicationUsecases _getMedicationUsecases;
  final GetMedicationLogsUsecases _getLogsUsecases;
  final UpdateMedicationLogUsecases _updateLogUsecases;
  final UpdateMedicationDateUsecases _editDateUsecases;

  Future<void> __init(_Init event, Emitter<MedicationDetailsState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final medication =
        currentContext
            .read<MedicationsBloc>()
            .state
            .medications
            .where((e) => e.id == event.id)
            .first;

    emit(
      state.copyWith(
        id: event.id,
        medication: medication,
        initStatus: Status.success,
      ),
    );
    final result = await _getLogsUsecases(medicationId: event.id);
    result.fold((l) {}, (r) {
      emit(state.copyWith(logs: r));
    });
  }

  Future<void> __loadLogs(
    _LoadLogs event,
    Emitter<MedicationDetailsState> emit,
  ) async {
    final result = await _getLogsUsecases(medicationId: state.id);
    result.fold((l) {}, (r) {
      emit(state.copyWith(logs: r));
    });
  }

  Future<void> __updateLog(
    _UpdateLog event,
    Emitter<MedicationDetailsState> emit,
  ) async {
    // final logs = [...state.logs];
    // final log = logs.firstWhere((e) => e.id == event.value.id);
    // final index = logs.indexOf(log);
    // logs[index] = event.value;
    // emit(state.copyWith(logs: logs));
    // _editDateUsecases(
    //   id: state.id,
    //   payload: MedicationDateModel(
    //     id: event.value.id,
    //     date: event.value.date,
    //     morning: event.value.morning,
    //     afternoon: event.value.afternoon,
    //     night: event.value.night,
    //   ),
    // );
  }

  Future<void> __updateMedicationLog(
    _UpdateMedicationLog event,
    Emitter<MedicationDetailsState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final res = await _updateLogUsecases(
      medicationId: event.medicationId,
      logId: event.logId,
      check: event.check,
      date: event.date,
    );
    await res.fold(
      (failure) async {
        emit(state.copyWith(initStatus: Status.error));
      },
      (success) async {
        final result = await _getLogsUsecases(medicationId: state.id);
        result.fold(
          (l) => emit(state.copyWith(initStatus: Status.error)),
          (logs) =>
              emit(state.copyWith(logs: logs, initStatus: Status.success)),
        );
      },
    );
  }
}
