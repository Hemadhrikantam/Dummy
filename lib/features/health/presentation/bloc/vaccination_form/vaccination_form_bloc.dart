import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/health/domain/usecases/edit_vaccination_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/payload/health/vaccination_payload.dart';
import '../../../../dailycare/domain/entities/remind_before.dart';
import '../../../../dailycare/domain/entities/timezone.dart';
import '../../../../dailycare/domain/usecases/remind_before_usecases.dart';
import '../../../../dailycare/domain/usecases/timezones_usecases.dart';
import '../../../domain/usecases/add_vaccination_usecases.dart';
import '../../../domain/usecases/medication_frequency_usecases.dart';

part 'vaccination_form_event.dart';
part 'vaccination_form_state.dart';
part 'vaccination_form_bloc.freezed.dart';

class VaccinationFormBloc
    extends Bloc<VaccinationFormEvent, VaccinationFormState> {
  VaccinationFormBloc({
    required AddVaccinationUsecases addVaccinationUsecases,
    required MedicationFrequencyUsecases medicationFrequencyUsecases,
    required TimezonesUsecases timezonesUsecases,
    required EditVaccinationUsecases editVaccinationUsecases,
    required RemindBeforeUsecases beforeUsecases,
    required GetVaccinationUsecases getVaccinationUsecases,
  }) : _addVaccinationUsecase = addVaccinationUsecases,
       _medicationFrequencyUsecases = medicationFrequencyUsecases,
       _timezonesUsecases = timezonesUsecases,
       _beforeUsecases = beforeUsecases,
       _editVaccinationUsecase = editVaccinationUsecases,
       _getVaccinationUsecase = getVaccinationUsecases,
       super(const VaccinationFormState()) {
    on<_Init>(_onInit);
    on<_IsGiven>(_onIsGiven);
    on<_VaccinationName>(_onVaccinationName);
    on<_Company>(_onCompany);
    on<_DueDate>(_onDueDate);
    on<_ReminderHour>(_onReminderHour);
    on<_ReminderMin>(_onReminderMin);
    on<_ReminderAmPm>(_onReminderAmPm);
    on<_DateAdministered>(_onDateAdministered);
    on<_Note>(_onNote);
    on<_Media>(_onMedia);
    on<_Frequency>(_onFrequency);
    on<_ReminderTimezone>(_onReminderTimezone);
    on<_ReminderBefore>(_onReminderBefore);
    on<_Submit>(_onSubmit);
  }

  final AddVaccinationUsecases _addVaccinationUsecase;
  final MedicationFrequencyUsecases _medicationFrequencyUsecases;
  final TimezonesUsecases _timezonesUsecases;
  final RemindBeforeUsecases _beforeUsecases;
  final GetVaccinationUsecases _getVaccinationUsecase;
  final EditVaccinationUsecases _editVaccinationUsecase;
  Future<void> _onInit(_Init event, Emitter<VaccinationFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final frequencies = List<Frequency>.from(
      (await _medicationFrequencyUsecases()).fold((l) => [], (r) => r),
    );
    final reminderBefores = List<RemindBefore>.from(
      (await _beforeUsecases()).fold((l) => [], (r) => r),
    );
    final timezones = List<Timezone>.from(
      (await _timezonesUsecases()).fold((l) => [], (r) => r),
    );
    emit(
      state.copyWith(
        petId: event.petId,
        frequencies:
            frequencies
                .map((e) => DropItemModel(id: e.id, value: e.frequency))
                .toList(),
        reminderTimezones:
            timezones.map((e) {
              return DropItemModel(id: e.id, value: e.code);
            }).toList(),
        reminderBefores:
            reminderBefores.map((e) {
              return DropItemModel(id: e.id, value: e.title);
            }).toList(),
      ),
    );
    if (event.id != null) {
      final result = await _getVaccinationUsecase(id: event.id!);
      result.fold((failure) => emit(state.copyWith(initStatus: Status.error)), (
        vaccination,
      ) {
        final reminderTime = vaccination.reminderTime.split(':');
        final reminderHour = int.parse(reminderTime[0]) % 12;
        final reminderMin = int.parse(reminderTime[1]);
        final isPm = int.parse(reminderTime[0]) >= 12;
        emit(
          state.copyWith(
            vaccinationName: NotEmpty.dirty(value: vaccination.vaccinationName),
            company: NotEmpty.dirty(value: vaccination.company),
            dateAdministered: NotEmpty.dirty(
              value: vaccination.dateAdministered.toIso8601String(),
            ),
            dueDate: NotEmpty.dirty(
              value: vaccination.dueDate.toIso8601String(),
            ),
            note: NotEmpty.dirty(value: vaccination.note),
            media: NotEmpty.dirty(value: vaccination.media),
            isGiven: vaccination.isGiven,
            frequency: DropdownValue.dirty(
              state.frequencies.firstWhere(
                (e) => e.id == vaccination.frequency,
              ),
            ),
            reminderHour: DropdownValue.dirty(
              DropItemModel(id: reminderHour, value: reminderHour.toString()),
            ),
            reminderMin: DropdownValue.dirty(
              DropItemModel(id: reminderMin, value: reminderMin.toString()),
            ),
            reminderAmPm: DropdownValue.dirty(
              DropItemModel(id: isPm ? 2 : 1, value: isPm ? 'PM' : 'AM'),
            ),
          ),
        );
      });
    }
    emit(state.copyWith(initStatus: Status.success));
  }

  void _onIsGiven(_IsGiven event, Emitter<VaccinationFormState> emit) {
    emit(state.copyWith(isGiven: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onDueDate(_DueDate event, Emitter<VaccinationFormState> emit) {
    emit(state.copyWith(dueDate: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderHour(
    _ReminderHour event,
    Emitter<VaccinationFormState> emit,
  ) {
    emit(state.copyWith(reminderHour: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderMin(_ReminderMin event, Emitter<VaccinationFormState> emit) {
    emit(state.copyWith(reminderMin: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderAmPm(
    _ReminderAmPm event,
    Emitter<VaccinationFormState> emit,
  ) {
    emit(state.copyWith(reminderAmPm: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onVaccinationName(
    _VaccinationName event,
    Emitter<VaccinationFormState> emit,
  ) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(vaccinationName: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onCompany(_Company event, Emitter<VaccinationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(company: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onDateAdministered(
    _DateAdministered event,
    Emitter<VaccinationFormState> emit,
  ) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(dateAdministered: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNote(_Note event, Emitter<VaccinationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(note: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<VaccinationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(media: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onFrequency(_Frequency event, Emitter<VaccinationFormState> emit) {
    emit(state.copyWith(frequency: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderTimezone(
    _ReminderTimezone event,
    Emitter<VaccinationFormState> emit,
  ) {
    emit(state.copyWith(reminderTimezone: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderBefore(
    _ReminderBefore event,
    Emitter<VaccinationFormState> emit,
  ) {
    emit(state.copyWith(reminderBefore: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<VaccinationFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final h = int.parse(state.reminderHour.value!.value);
    final m = int.parse(state.reminderMin.value!.value);
    final isPm = state.reminderAmPm.value!.value == "PM";
    final payload = VaccinationPayload(
      isGiven: state.isGiven,
      vaccinationName: state.vaccinationName.value,
      company: state.company.value,
      reminderTime: '${isPm ? h + 12 : h}:$m',
      dateAdministered: DateTime.parse(state.dateAdministered.value),
      dueDate: DateTime.parse(state.dueDate.value),
      note: state.note.value,
      media: await MultipartFile.fromFile(
        state.media.value,
        filename: state.media.value.split('/').last,
      ),
      pet: state.petId,
      frequency: state.frequency.value!.id,
      reminderTimezone: state.reminderTimezone.value!.id,
      reminderBefore: state.reminderBefore.value!.id,
    );
    final result =
        event.id != null
            ? await _editVaccinationUsecase(payload: payload, id: event.id!)
            : await _addVaccinationUsecase(payload: payload);

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }
}
