import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/domain/usecases/update_vaccination_log_usecases.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_details/vaccination_details_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vaccination_log_form_event.dart';
part 'vaccination_log_form_state.dart';
part 'vaccination_log_form_bloc.freezed.dart';

class VaccinationLogFormBloc
    extends Bloc<VaccinationLogFormEvent, VaccinationLogFormState> {
  VaccinationLogFormBloc({
    required UpdateVaccinationLogUsecases updateVaccinationLogUsecases,
  }) : _updateVaccinationLogUsecases = updateVaccinationLogUsecases,
       super(const VaccinationLogFormState()) {
    on<_Init>(_onInit);
    on<_IsGiven>(_onIsGiven);
    on<_NotesChanged>(_onNotesChanged);
    on<_DateChanged>(_onDateChanged);
    on<_Submit>(_onSubmit);
  }

  final UpdateVaccinationLogUsecases _updateVaccinationLogUsecases;

  void _onInit(_Init event, Emitter<VaccinationLogFormState> emit) {
    final next = state.copyWith(
      vaccinationId: event.vaccinationId,
      check: event.check ?? state.check,
      notes:
          event.notes != null
              ? NotEmpty.dirty(value: event.notes!)
              : state.notes,
      date: event.date ?? state.date,
      submitStatus: Status.init,
      errorMessage: null,
    );
    emit(next.copyWith(validation: next.validationX));
  }

  void _onIsGiven(_IsGiven event, Emitter<VaccinationLogFormState> emit) {
    final next = state.copyWith(check: event.value);
    emit(next.copyWith(validation: next.validationX));
  }

  void _onNotesChanged(
    _NotesChanged event,
    Emitter<VaccinationLogFormState> emit,
  ) {
    final next = state.copyWith(notes: NotEmpty.dirty(value: event.value));
    emit(next.copyWith(validation: next.validationX));
  }

  void _onDateChanged(
    _DateChanged event,
    Emitter<VaccinationLogFormState> emit,
  ) {
    final next = state.copyWith(date: event.value);
    emit(next.copyWith(validation: next.validationX));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<VaccinationLogFormState> emit,
  ) async {
    if (state.vaccinationId == null || state.vaccinationId!.isEmpty) {
      emit(
        state.copyWith(
          submitStatus: Status.error,
          errorMessage: 'Missing vaccinationId',
        ),
      );
      return;
    }
    if (state.date == null) {
      emit(
        state.copyWith(
          submitStatus: Status.error,
          errorMessage: 'Missing date',
        ),
      );
      return;
    }

    emit(state.copyWith(submitStatus: Status.loading));
    final res = await _updateVaccinationLogUsecases(
      vaccinationId: state.vaccinationId!,
      check: state.check,
      notes: state.notes.value,
      date: state.date!,
    );
    await res.fold(
      (failure) async {
        emit(
          state.copyWith(
            submitStatus: Status.error,
            errorMessage: failure.message,
          ),
        );
      },
      (success) async {
        emit(state.copyWith(submitStatus: Status.success));
        currentContext.read<VaccinationDetailsBloc>().add(
          VaccinationDetailsEvent.loadVaccinationLogs(),
        );
      },
    );
  }
}
