import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/health/domain/entities/vaccination.dart';
import 'package:dummy/features/health/domain/entities/vaccination_log_view.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_log_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_usecases.dart';
import 'package:dummy/features/health/domain/usecases/update_vaccination_log_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_details_event.dart';
part 'vaccination_details_state.dart';
part 'vaccination_details_bloc.freezed.dart';

class VaccinationDetailsBloc
    extends Bloc<VaccinationDetailsEvent, VaccinationDetailsState> {
  VaccinationDetailsBloc({
    required GetVaccinationUsecases getVaccinationUsecases,
    required GetVaccinationLogUsecases getVaccinationLogUsecases,
  }) : _getVaccinationUsecases = getVaccinationUsecases,
       _getVaccinationLogUsecases = getVaccinationLogUsecases,
       super(VaccinationDetailsState()) {
    on<_Init>(_init);
    on<_LoadVaccinationLogs>(_loadVaccinationLogs);
  }
  final GetVaccinationUsecases _getVaccinationUsecases;
  final GetVaccinationLogUsecases _getVaccinationLogUsecases;

  Future<void> _init(_Init event, Emitter<VaccinationDetailsState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final response = await _getVaccinationUsecases(id: event.id);
    response.fold(
      (failure) => emit(state.copyWith(initStatus: Status.error)),
      (vaccination) => emit(
        state.copyWith(initStatus: Status.success, vaccination: vaccination),
      ),
    );
    add(VaccinationDetailsEvent.loadVaccinationLogs());
  }

  Future<void> _loadVaccinationLogs(
    _LoadVaccinationLogs event,
    Emitter<VaccinationDetailsState> emit,
  ) async {
    emit(state.copyWith(logsStatus: Status.loading));
    final response = await _getVaccinationLogUsecases(
      vaccinationId: state.vaccination?.id ?? '',
    );
    response.fold(
      (failure) => emit(state.copyWith(logsStatus: Status.error)),
      (log) =>
          emit(state.copyWith(logsStatus: Status.success, vaccinationLog: log)),
    );
  }

  // Future<void> _addVaccinationLog(
  //   _AddVaccinationLog event,
  //   Emitter<VaccinationDetailsState> emit,
  // ) async {
  //   emit(state.copyWith(addLogStatus: Status.loading));
  //   final res = await _updateVaccinationLogUsecases(
  //     vaccinationId: state.vaccination?.id ?? '',
  //     check: event.check,
  //     notes: event.notes,
  //     date: event.date,
  //     nextDueDate: event.nextDueDate,
  //     isFinalDoseCompleted: event.isFinalDoseCompleted,
  //   );
  //   await res.fold(
  //     (failure) async {
  //       emit(state.copyWith(addLogStatus: Status.error));
  //     },
  //     (success) async {
  //       emit(state.copyWith(addLogStatus: Status.success));
  //       add(const VaccinationDetailsEvent.loadVaccinationLogs());
  //     },
  //   );
  // }
}
