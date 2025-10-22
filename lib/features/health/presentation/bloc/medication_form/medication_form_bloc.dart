import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/medication_time_slot.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/health/medication_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/health/domain/usecases/add_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/edit_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'medication_form_event.dart';
part 'medication_form_state.dart';
part 'medication_form_bloc.freezed.dart';

class MedicationFormBloc
    extends Bloc<MedicationFormEvent, MedicationFormState> {
  MedicationFormBloc({
    required AddMedicationUsecases addMedicationUsecases,
    required UploadFileUsecases uploadFileUsecases,
    required GetMedicationUsecases getMedicationUsecases,
    required EditMedicationUsecases editMedicationUsecases,
  }) : _addMedicationUsecase = addMedicationUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       _getMedicationUsecases = getMedicationUsecases,
       _editMedicationUsecases = editMedicationUsecases,
       super(const MedicationFormState()) {
    on<_Init>(_onInit);
    on<_Reminder>(_onReminder);
    on<_TabletName>(_onTabletName);
    on<_Company>(_onCompany);
    on<_Dosage>(_onDosage);
    on<_DosageUnit>(_onDosageUnit);
    on<_MorningTimeEnable>(_morningTimeEnable);
    on<_AfternoonTimeEnable>(_afternoonTimeEnable);
    on<_NightTimeEnable>(_nightTimeEnable);
    on<_MorningTimeHour>(_onMorningTimeHour);
    on<_MorningTimeMin>(_onMorningTimeMin);
    on<_AfternoonTimeHour>(_onAfternoonTimeHour);
    on<_AfternoonTimeMin>(_onAfternoonTimeMin);
    on<_NightTimeHour>(_onNightTimeHour);
    on<_NightTimeMin>(_onNightTimeMin);
    on<_StartDate>(_onStartDate);
    on<_EndDate>(_onEndDate);
    on<_Note>(_onNote);
    on<_Media>(_onMedia);
    on<_Frequency>(_onFrequency);
    on<_Submit>(_onSubmit);
  }

  final AddMedicationUsecases _addMedicationUsecase;
  final UploadFileUsecases _uploadFileUsecases;
  final GetMedicationUsecases _getMedicationUsecases;
  final EditMedicationUsecases _editMedicationUsecases;

  Future<void> _onInit(_Init event, Emitter<MedicationFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final frequencies =
        currentContext.read<AuthBloc>().state.enums?.frequencyTypes ?? [];
    final dosageUnits =
        currentContext.read<AuthBloc>().state.enums?.dosageTypes ?? [];
    final timeSlots =
        currentContext.read<AuthBloc>().state.enums?.medicationTimeslots ?? [];

    emit(
      state.copyWith(
        initStatus: Status.success,
        petId: event.petId,
        dosageUnits:
            dosageUnits
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
        frequencies:
            frequencies
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
      ),
    );
    if (event.id != null) {
      final result = await _getMedicationUsecases(id: event.id!);
      result.fold((l) {}, (r) {
        for (final ts in r.timeslots) {
          final ets = timeSlots.where((e) => e.id == ts.id).firstOrNull;
          if (ets != null) {
            final time = ts.customTime?.split(':');
            final hour = int.parse(time?[0] ?? '0') % 12;
            final min = int.parse(time?[1] ?? '0');
            switch (ets.name.toMedicationTimeSlotEnum()) {
              case MedicationTimeSlot.Afternoon:
                emit(
                  state.copyWith(
                    afternoonTimeEnable: true,
                    afternoonTimeHour: DropdownValue.dirty(
                      DropItemModel(id: hour, value: hour.toString()),
                    ),
                    afternoonTimeMin: DropdownValue.dirty(
                      DropItemModel(id: min, value: min.toString()),
                    ),
                  ),
                );
                break;
              case MedicationTimeSlot.Morning:
                emit(
                  state.copyWith(
                    morningTimeEnable: true,
                    morningTimeHour: DropdownValue.dirty(
                      DropItemModel(id: hour, value: hour.toString()),
                    ),
                    morningTimeMin: DropdownValue.dirty(
                      DropItemModel(id: min, value: min.toString()),
                    ),
                  ),
                );
                break;
              case MedicationTimeSlot.Night:
                emit(
                  state.copyWith(
                    nightTimeEnable: true,
                    nightTimeHour: DropdownValue.dirty(
                      DropItemModel(id: hour, value: hour.toString()),
                    ),
                    nightTimeMin: DropdownValue.dirty(
                      DropItemModel(id: min, value: min.toString()),
                    ),
                  ),
                );
                break;
              case MedicationTimeSlot.Evening:
                break;
            }
          }
        }

        emit(
          state.copyWith(
            tabletName: NotEmpty.dirty(value: r.name.split(' ')[0]),
            company: NotEmpty.dirty(value: r.company),
            startDate: NotEmpty.dirty(value: r.startDate.toString()),
            endDate: NotEmpty.dirty(value: r.endDate.toString()),
            dosageUnit: DropdownStringValue.dirty(
              DropStringItemModel(
                id: r.dosageTypeId.toString(),
                value: r.dosageTypeName ?? '',
              ),
            ),
            frequency: DropdownStringValue.dirty(
              state.frequencies.firstWhere((e) => e.id == r.frequencyId),
            ),
            note: NotEmpty.dirty(value: r.notes),
            dosage: NotEmpty.dirty(
              value: r.dosageValue.split(' ')[0].toString(),
            ),
            media: NotEmpty.dirty(value: r.imageUrl ?? ''),
            reminder: r.reminder?.isEnabled ?? false,
          ),
        );
      });
    }
  }

  void _onReminder(_Reminder event, Emitter<MedicationFormState> emit) {
    emit(state.copyWith(reminder: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void _nightTimeEnable(
    _NightTimeEnable event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(nightTimeEnable: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void _morningTimeEnable(
    _MorningTimeEnable event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(morningTimeEnable: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void _afternoonTimeEnable(
    _AfternoonTimeEnable event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(afternoonTimeEnable: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onTabletName(_TabletName event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(tabletName: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onCompany(_Company event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(company: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onDosage(_Dosage event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(dosage: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onDosageUnit(_DosageUnit event, Emitter<MedicationFormState> emit) {
    emit(state.copyWith(dosageUnit: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMorningTimeHour(
    _MorningTimeHour event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(morningTimeHour: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMorningTimeMin(
    _MorningTimeMin event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(morningTimeMin: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onAfternoonTimeHour(
    _AfternoonTimeHour event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(afternoonTimeHour: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onAfternoonTimeMin(
    _AfternoonTimeMin event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(afternoonTimeMin: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNightTimeHour(
    _NightTimeHour event,
    Emitter<MedicationFormState> emit,
  ) {
    emit(state.copyWith(nightTimeHour: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNightTimeMin(_NightTimeMin event, Emitter<MedicationFormState> emit) {
    emit(state.copyWith(nightTimeMin: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onStartDate(_StartDate event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(startDate: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onEndDate(_EndDate event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(endDate: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNote(_Note event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(note: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<MedicationFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(media: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onFrequency(_Frequency event, Emitter<MedicationFormState> emit) {
    emit(state.copyWith(frequency: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<MedicationFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final payload = MedicationPayload(
      petId: currentContext.read<DashboardBloc>().state.selectedPet?.id ?? '',
      reminderEnabled: state.reminder,
      name: state.tabletName.value,
      company: state.company.value,
      timeslots: [
        if (state.morningTimeEnable)
          TimeslotPayload(
            timeslotId: 'd338ae8b-2458-4cc2-9b3f-bdcde323c838',
            customTime:
                '${state.morningTimeHour.value!.value.padLeft(2, '0')}:${state.morningTimeMin.value!.value.padLeft(2, '0')}',
          ),
        if (state.afternoonTimeEnable)
          TimeslotPayload(
            timeslotId: '6a1fd2aa-06b8-4762-b540-5c48b417ec16',
            customTime:
                '${state.afternoonTimeHour.value!.value.padLeft(2, '0')}:${state.afternoonTimeMin.value!.value.padLeft(2, '0')}',
          ),
        if (state.nightTimeEnable)
          TimeslotPayload(
            timeslotId: 'a34a882a-3e81-495c-ab98-b23694885ef8',
            customTime:
                '${state.nightTimeHour.value!.value.padLeft(2, '0')}:${state.nightTimeMin.value!.value.padLeft(2, '0')}',
          ),
      ],
      dosageTypeId: state.dosageUnit.value!.id.toString(),
      dosageValue: double.parse(state.dosage.value).toInt(),
      startDate: DateTime.parse(state.startDate.value),
      endDate: DateTime.parse(state.endDate.value),
      notes: state.note.value,
      imageUrl:
          state.media.value.isEmpty || state.media.value.contains('http')
              ? state.media.value
              : (await _uploadFileUsecases(
                path: state.media.value,
                type: UploadType.pet_diary_media,
              )).fold((failure) => '', (success) => success.finalUrl),
      frequencyId: state.frequency.value!.id.toString(),
    );
    final result =
        event.id == null
            ? await _addMedicationUsecase(payload: payload)
            : await _editMedicationUsecases(payload: payload, id: event.id!);

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }
}
