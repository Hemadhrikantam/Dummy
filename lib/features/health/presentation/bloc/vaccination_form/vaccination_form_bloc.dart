import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/domain/usecases/edit_vaccination_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import '../../../../../core/payload/health/vaccination_payload.dart';
import '../../../../dailycare/domain/entities/timezone.dart';
import '../../../domain/usecases/add_vaccination_usecases.dart';

part 'vaccination_form_event.dart';
part 'vaccination_form_state.dart';
part 'vaccination_form_bloc.freezed.dart';

class VaccinationFormBloc
    extends Bloc<VaccinationFormEvent, VaccinationFormState> {
  VaccinationFormBloc({
    required AddVaccinationUsecases addVaccinationUsecases,
    required EditVaccinationUsecases editVaccinationUsecases,
    required GetVaccinationUsecases getVaccinationUsecases,
  }) : _addVaccinationUsecase = addVaccinationUsecases,
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
    on<_DoseSubmitted>(__doseSubmitted);
  }

  final AddVaccinationUsecases _addVaccinationUsecase;
  final GetVaccinationUsecases _getVaccinationUsecase;
  final EditVaccinationUsecases _editVaccinationUsecase;
  Future<void> _onInit(_Init event, Emitter<VaccinationFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final frequencies =
        currentContext.read<AuthBloc>().state.enums?.frequencyTypes ?? [];
    final timezones = List<Timezone>.from([
      Timezone(id: 1, code: 'UTC'),
      Timezone(id: 2, code: 'IST'),
      Timezone(id: 3, code: 'GMT'),
    ]);
    emit(
      state.copyWith(
        petId: event.petId,
        frequencies:
            frequencies
                .where((e) => e.frequencyType == 'date')
                .toList()
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
        reminderTimezones:
            timezones.map((e) {
              return DropItemModel(id: e.id, value: e.code);
            }).toList(),
        reminderBefores:
            frequencies
                .where((e) => e.frequencyType == 'time')
                .toList()
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
      ),
    );
    if (event.id != null) {
      final result = await _getVaccinationUsecase(id: event.id!);
      result.fold((failure) => emit(state.copyWith(initStatus: Status.error)), (
        vaccination,
      ) {
        // final reminderTime = vaccination.reminderDate.split(':');
        final reminderHour = (vaccination.reminderDate?.hour ?? 0) % 12;
        final reminderMin = (vaccination.reminderDate?.minute ?? 0);
        final isPm = (vaccination.reminderDate?.hour ?? 0) >= 12;
        emit(
          state.copyWith(
            vaccinationName: NotEmpty.dirty(value: vaccination.name),
            company: NotEmpty.dirty(value: vaccination.companyName),
            dateAdministered: NotEmpty.dirty(
              value: vaccination.dateAdministered?.toIso8601String() ?? '',
            ),
            reminderTimezone: DropdownValue.dirty(
              DropItemModel(
                id:
                    timezones
                        .firstWhere((e) => e.code == vaccination.timezone)
                        .id,
                value: vaccination.timezone ?? '',
              ),
            ),
            reminderBefore: DropdownStringValue.dirty(
              DropStringItemModel(
                id: vaccination.timeFrequencyId,
                value: vaccination.timeFrequencyName ?? '',
              ),
            ),
            dueDate: NotEmpty.dirty(
              value: vaccination.dueDate?.toIso8601String() ?? '',
            ),
            note: NotEmpty.dirty(value: vaccination.notes),
            media: NotEmpty.dirty(value: vaccination.imageUrl ?? ''),
            isGiven: vaccination.status == 'given',
            frequency: DropdownStringValue.dirty(
              state.frequencies.firstWhere(
                (e) => e.id == vaccination.frequencyId,
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
    emit(state.copyWith(frequency: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void __doseSubmitted(
    _DoseSubmitted event,
    Emitter<VaccinationFormState> emit,
  ) {
    emit(state.copyWith(isDoseCompleted: event.isDoseSubmitted));
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
    emit(
      state.copyWith(reminderBefore: DropdownStringValue.dirty(event.value)),
    );
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<VaccinationFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    // final h = int.parse(state.reminderHour.value!.value);
    // final m = int.parse(state.reminderMin.value!.value);
    // final isPm = state.reminderAmPm.value!.value == "PM";
    final payload = VaccinationPayload(
      petId: currentContext.read<DashboardBloc>().state.selectedPet?.id ?? '',
      companyName: state.company.value,
      name: state.vaccinationName.value,
      // company: state.company.value,
      reminderTime: DateFormat('HH:mm').parse(
        '${state.reminderHour.value!.value}:${state.reminderMin.value!.value}',
      ),
      // reminderTime: '${isPm ? h + 12 : h}:$m',
      // dateAdministered: DateTime.parse(state.dateAdministered.value),
      dueDate:
          state.dueDate.isValid ? DateTime.parse(state.dueDate.value) : null,
      notes: state.note.value,
      // media: await MultipartFile.fromFile(
      //   state.media.value,
      //   filename: state.media.value.split('/').last,
      // ),
      dateAdministered: DateTime.parse(state.dateAdministered.value),
      frequencyId: state.frequency.value?.id.toString() ?? '',
      reminderTimezone: state.reminderTimezone.value?.value.toString() ?? '',
      timeFrequencyId: state.reminderBefore.value!.id,
    );
    final result =
        event.id != null
            ? await _editVaccinationUsecase(payload: payload, id: event.id!)
            : await _addVaccinationUsecase(payload: payload);

    result.fold((failure) {
      emit(state.copyWith(submitStatus: Status.error));
      AppAlert.showToast(message: failure.message);
    }, (success) => emit(state.copyWith(submitStatus: Status.success)));
  }
}
