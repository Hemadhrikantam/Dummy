import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/health/medication_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/health/domain/usecases/add_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/edit_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/medication_frequency_usecases.dart';

part 'medication_form_event.dart';
part 'medication_form_state.dart';
part 'medication_form_bloc.freezed.dart';

class MedicationFormBloc
    extends Bloc<MedicationFormEvent, MedicationFormState> {
  MedicationFormBloc({
    required AddMedicationUsecases addMedicationUsecases,
    required MedicationFrequencyUsecases medicationFrequencyUsecases,
    required GetMedicationUsecases getMedicationUsecases,
    required EditMedicationUsecases editMedicationUsecases,
  }) : _addMedicationUsecase = addMedicationUsecases,
       _medicationFrequencyUsecases = medicationFrequencyUsecases,
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
  final MedicationFrequencyUsecases _medicationFrequencyUsecases;
  final GetMedicationUsecases _getMedicationUsecases;
  final EditMedicationUsecases _editMedicationUsecases;

  Future<void> _onInit(_Init event, Emitter<MedicationFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final frequencies = List<Frequency>.from(
      (await _medicationFrequencyUsecases()).fold((l) => [], (r) => r),
    );

    emit(
      state.copyWith(
        initStatus: Status.success,
        petId: event.petId,
        dosageUnits: [DropItemModel(id: 1, value: "Tablets")],
        frequencies:
            frequencies
                .map((e) => DropItemModel(id: e.id, value: e.frequency))
                .toList(),
      ),
    );
    if (event.id != null) {
      final result = await _getMedicationUsecases(id: event.id!);
      result.fold((l) {}, (r) {
        LogUtility.info('Medication details: $r');
        final mTime = r.morningTime.split(':');
        final mHour = int.parse(mTime[0]) % 12;
        final mMin = int.parse(mTime[1]);
        final aTime = r.afternoonTime.split(':');
        final aHour = int.parse(aTime[0]) % 12;
        final aMin = int.parse(aTime[1]);
        final nTime = r.nightTime.split(':');
        final nHour = int.parse(nTime[0]) % 12;
        final nMin = int.parse(nTime[1]);
        emit(
          state.copyWith(
            tabletName: NotEmpty.dirty(value: r.tabletName),
            company: NotEmpty.dirty(value: r.company),
            startDate: NotEmpty.dirty(value: r.startDate.toString()),
            endDate: NotEmpty.dirty(value: r.endDate.toString()),
            dosageUnit: DropdownValue.dirty(
              state.dosageUnits.firstWhere(
                (e) => e.value.toLowerCase() == r.dosageUnit.toLowerCase(),
              ),
            ),
            frequency: DropdownValue.dirty(
              state.frequencies.firstWhere((e) => e.id == r.frequency),
            ),
            note: NotEmpty.dirty(value: r.note),
            dosage: NotEmpty.dirty(value: r.dosage.toString()),
            media: NotEmpty.dirty(value: r.media),
            morningTimeHour: DropdownValue.dirty(
              DropItemModel(id: mHour, value: mHour.toString()),
            ),
            morningTimeMin: DropdownValue.dirty(
              DropItemModel(id: mMin, value: mMin.toString()),
            ),
            morningTimeEnable: r.morningTime.isNotEmpty,
            afternoonTimeEnable: r.afternoonTime.isNotEmpty,
            nightTimeEnable: r.nightTime.isNotEmpty,
            nightTimeHour: DropdownValue.dirty(
              DropItemModel(id: nHour, value: nHour.toString()),
            ),
            nightTimeMin: DropdownValue.dirty(
              DropItemModel(id: nMin, value: nMin.toString()),
            ),

            afternoonTimeHour: DropdownValue.dirty(
              DropItemModel(id: aHour, value: aHour.toString()),
            ),
            afternoonTimeMin: DropdownValue.dirty(
              DropItemModel(id: aMin, value: aMin.toString()),
            ),
            reminder: r.reminder,
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
    emit(state.copyWith(dosageUnit: DropdownValue.dirty(event.value)));
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
    emit(state.copyWith(frequency: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<MedicationFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final payload = MedicationPayload(
      reminder: state.reminder,
      tabletName: state.tabletName.value,
      company: state.company.value,
      dosage: int.parse(state.dosage.value),
      dosageUnit:
          state.dosageUnit.value!.value.contains("Tablets") ? "tablets" : '',
      morningTime:
          '${state.morningTimeHour.value!.value}:${state.morningTimeMin.value!.value}',
      afternoonTime:
          '${state.afternoonTimeHour.value!.value}:${state.afternoonTimeMin.value!.value}',
      nightTime:
          '${state.nightTimeHour.value!.value}:${state.nightTimeMin.value!.value}',
      startDate: DateTime.parse(state.startDate.value),
      endDate: DateTime.parse(state.endDate.value),
      note: state.note.value,
      media: await MultipartFile.fromFile(
        state.media.value,
        filename: state.media.value.split('/').last,
      ),
      pet: state.petId,
      frequency: state.frequency.value!.id,
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
