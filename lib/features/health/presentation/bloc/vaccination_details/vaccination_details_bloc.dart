import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
// import 'package:dummy/features/health/data/models/vaccination_log_payload.dart';
import 'package:dummy/features/health/domain/entities/vaccination.dart';
// import 'package:dummy/features/health/domain/entities/vaccination_log.dart';
// import 'package:dummy/features/health/domain/usecases/add_vaccination_log_usecases.dart';
// import 'package:dummy/features/health/domain/usecases/get_vaccination_logs_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_details_event.dart';
part 'vaccination_details_state.dart';
part 'vaccination_details_bloc.freezed.dart';

class VaccinationDetailsBloc
    extends Bloc<VaccinationDetailsEvent, VaccinationDetailsState> {
  VaccinationDetailsBloc({
    required GetVaccinationUsecases getVaccinationUsecases,
    // required AddVaccinationLogUsecases addVaccinationLogUsecases,
    // required GetVaccinationLogsUsecases getVaccinationLogsUsecases,
  }) : _getVaccinationUsecases = getVaccinationUsecases,
       //  _addVaccinationLogUsecases = addVaccinationLogUsecases,
       //  _getVaccinationLogsUsecases = getVaccinationLogsUsecases,
       super(VaccinationDetailsState()) {
    on<_Init>(_init);
    on<_LoadVaccinationLogs>(_loadVaccinationLogs);
    on<_AddVaccinationLog>(_addVaccinationLog);
  }
  final GetVaccinationUsecases _getVaccinationUsecases;
  // final AddVaccinationLogUsecases _addVaccinationLogUsecases;
  // final GetVaccinationLogsUsecases _getVaccinationLogsUsecases;

  Future<void> _init(_Init event, Emitter<VaccinationDetailsState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final response = await _getVaccinationUsecases(id: event.id);
    response.fold(
      (failure) => emit(state.copyWith(initStatus: Status.error)),
      (vaccination) => emit(
        state.copyWith(initStatus: Status.success, vaccination: vaccination),
      ),
    );
  }

  Future<void> _loadVaccinationLogs(
    _LoadVaccinationLogs event,
    Emitter<VaccinationDetailsState> emit,
  ) async {
    emit(state.copyWith(logsStatus: Status.loading));
    // final response = await _getVaccinationLogsUsecases();
    // response.fold(
    //   (failure) => emit(state.copyWith(logsStatus: Status.error)),
    //   (logs) => emit(
    //     state.copyWith(logsStatus: Status.success, vaccinationLogs: logs),
    //   ),
    // );
  }

  Future<void> _addVaccinationLog(
    _AddVaccinationLog event,
    Emitter<VaccinationDetailsState> emit,
  ) async {
    // emit(state.copyWith(addLogStatus: Status.loading));
    // final payload = VaccinationLogPayload(
    //   vaccinationId: event.vaccinationId,
    //   notes: event.notes,
    // );
    // final response = await _addVaccinationLogUsecases(payload:  payload);
    // response.fold(
    //   (failure) => emit(state.copyWith(addLogStatus: Status.error)),
    //   (success) {
    //     emit(state.copyWith(addLogStatus: Status.success));
    //     // Reload logs after adding a new one
    //     add(VaccinationDetailsEvent.loadVaccinationLogs());
    //   },
    // );
  }
}
