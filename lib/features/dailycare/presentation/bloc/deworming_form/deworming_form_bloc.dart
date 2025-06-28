import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/deworming_payload.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/dailycare/domain/entities/remind_before.dart';
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_deworming_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/frequency_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/remind_before_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/timezones_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deworming_form_event.dart';
part 'deworming_form_state.dart';
part 'deworming_form_bloc.freezed.dart';

class DewormingFormBloc extends Bloc<DewormingFormEvent, DewormingFormState> {
  DewormingFormBloc({
    required AddDewormingUsecases addDewormingUsecases,
    required TimezonesUsecases timezonesUsecases,
    required FrequencyUsecases frequencyUsecases,
    required RemindBeforeUsecases beforeUsecases,
  }) : _addDewormingUsecase = addDewormingUsecases,
       _timezonesUsecases = timezonesUsecases,
       _frequencyUsecases = frequencyUsecases,
       _beforeUsecases = beforeUsecases,
       super(const DewormingFormState()) {
    on<_Init>(_onInit);
    on<_Date>(_onDate);
    on<_ProductName>(_onProductName);
    on<_DueDate>(_onDueDate);
    on<_ReminderHour>(_onReminderHour);
    on<_ReminderMin>(_onReminderMin);
    on<_ReminderAmPm>(_onReminderAmPm);
    on<_Notes>(_onNotes);
    on<_Media>(_onMedia);
    on<_Frequency>(_onFrequency);
    on<_ReminderTimezone>(_onReminderTimezone);
    on<_ReminderBefore>(_onReminderBefore);
    on<_Submit>(_onSubmit);
  }

  final AddDewormingUsecases _addDewormingUsecase;
  final TimezonesUsecases _timezonesUsecases;
  final FrequencyUsecases _frequencyUsecases;
  final RemindBeforeUsecases _beforeUsecases;

  Future<void> _onInit(_Init event, Emitter<DewormingFormState> emit) async {
    final frequencies = List<Frequency>.from(
      (await _frequencyUsecases()).fold((l) => [], (r) => r),
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
            frequencies.map((e) {
              return DropItemModel(id: e.id, value: e.frequency);
            }).toList(),
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
    emit(
      state.copyWith(
        reminderTimezone: DropdownValue.dirty(state.reminderTimezones.first),
        reminderAmPm: DropdownValue.dirty(DropItemModel(id: 2, value: 'PM')),
      ),
    );
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<DewormingFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final h = int.parse(state.reminderHour.value!.value);
    final m = int.parse(state.reminderMin.value!.value);
    final isPm = state.reminderAmPm.value!.value == "PM";
    final result = await _addDewormingUsecase(
      payload: DewormingPayload(
        date: DateTime.parse(state.date.value),
        productName: state.productName.value,
        dueDate: DateTime.parse(state.dueDate.value),
        reminderTime: '${isPm ? h + 12 : h}:$m',
        notes: state.notes.value,
        media: await MultipartFile.fromFile(
          state.media.value,
          filename: state.media.value.split('/').last,
        ),
        pet: state.petId,
        frequency: state.frequency.value!.id,
        reminderTimezone: state.reminderTimezone.value!.id,
        reminderBefore: state.reminderBefore.value!.id,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }

  void _onDate(_Date event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onProductName(_ProductName event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(productName: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onDueDate(_DueDate event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(dueDate: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderHour(_ReminderHour event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(reminderHour: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderMin(_ReminderMin event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(reminderMin: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderAmPm(_ReminderAmPm event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(reminderAmPm: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNotes(_Notes event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(media: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onFrequency(_Frequency event, Emitter<DewormingFormState> emit) {
    emit(state.copyWith(frequency: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderTimezone(
    _ReminderTimezone event,
    Emitter<DewormingFormState> emit,
  ) {
    emit(state.copyWith(reminderTimezone: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderBefore(
    _ReminderBefore event,
    Emitter<DewormingFormState> emit,
  ) {
    emit(state.copyWith(reminderBefore: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }
}
