import 'dart:io';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/dailycare/deworming_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_deworming_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/frequency_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/remind_before_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/timezones_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    required UploadFileUsecases uploadFileUsecases,
  }) : _addDewormingUsecase = addDewormingUsecases,
       _uploadFileUsecases = uploadFileUsecases,
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
  final UploadFileUsecases _uploadFileUsecases;

  Future<void> _onInit(_Init event, Emitter<DewormingFormState> emit) async {
    final frequencies =
        currentContext.read<AuthBloc>().state.enums!.frequencyTypes;
    final timezones = List<Timezone>.from([
      Timezone(id: 1, code: 'UTC'),
      Timezone(id: 2, code: 'IST'),
      Timezone(id: 3, code: 'GMT'),
    ]);
    emit(
      state.copyWith(
        petId: event.petId,
        frequencies:
            frequencies.map((e) {
              return DropStringItemModel(id: e.id, value: e.name);
            }).toList(),
        reminderTimezones:
            timezones.map((e) {
              return DropItemModel(id: e.id, value: e.code);
            }).toList(),
        reminderBefores:
            frequencies.where((f) => f.frequencyType == 'time').map((e) {
              return DropStringItemModel(id: e.id, value: e.name);
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
    List<DewormingMediaPayload> mediaList = const [];
    if (state.media.value.isNotEmpty) {
      var url = state.media.value;
      var fileSize = 1; // must be positive per backend validation
      final fileType = _inferFileType(url);
      if (!url.startsWith('http')) {
        // Fetch uploader from DI to avoid unexpected null field issues

        final uploadResult = await _uploadFileUsecases(
          path: url,
          type: UploadType.daily_care,
          public: false,
        );
        bool ok = true;
        uploadResult.fold(
          (failure) {
            ok = false;
            emit(state.copyWith(submitStatus: Status.error));
          },
          (success) {
            url = success.finalUrl;
          },
        );
        if (!ok) return;
        try {
          fileSize = await File(state.media.value).length();
          if (fileSize <= 0) fileSize = 1;
        } catch (_) {
          fileSize = 1;
        }
      }
      mediaList = [
        DewormingMediaPayload(
          fileUrl: url,
          fileType: fileType,
          fileSize: fileSize.toString(),
        ),
      ];
    }
    final h = int.parse(state.reminderHour.value!.value);
    final m = int.parse(state.reminderMin.value!.value);
    final isPm = state.reminderAmPm.value!.value == "PM";
    final result = await _addDewormingUsecase(
      payload: DewormingPayload(
        dewormingDate: DateTime.parse(state.date.value),
        productName: state.productName.value,
        dueDate: DateTime.parse(state.dueDate.value),
        reminderTime:
            '${(isPm ? h + 12 : h).toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}',
        notes: state.notes.value,
        mediaList: mediaList,
        petId: state.petId,
        frequencyId: state.frequency.value!.id,
        timezone: state.reminderTimezone.value!.value,
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
    emit(state.copyWith(frequency: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onReminderTimezone(
    _ReminderTimezone event,
    Emitter<DewormingFormState> emit,
  ) {
    emit(state.copyWith(reminderTimezone: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  String _inferFileType(String pathOrUrl) {
    final lower = pathOrUrl.toLowerCase();
    return lower.endsWith('.mp4') ||
            lower.endsWith('.mov') ||
            lower.contains('video')
        ? 'video'
        : 'image';
  }

  void _onReminderBefore(
    _ReminderBefore event,
    Emitter<DewormingFormState> emit,
  ) {
    emit(
      state.copyWith(reminderBefore: DropdownStringValue.dirty(event.value)),
    );
    emit(state.copyWith(validation: state.validationX));
  }
}
