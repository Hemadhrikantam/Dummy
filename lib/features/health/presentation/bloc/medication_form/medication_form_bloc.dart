import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/medication_payload.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/health/domain/usecases/add_medication_usecases.dart';
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
  }) : _addMedicationUsecase = addMedicationUsecases,
       _medicationFrequencyUsecases = medicationFrequencyUsecases,
       super(const MedicationFormState()) {
    on<_Init>(_onInit);
    on<_Reminder>((e, emit) => emit(state.copyWith(reminder: e.value)));
    on<_TabletName>(
      (e, emit) => _updateField(
        e.value,
        state.tabletName,
        (v) =>
            emit(state.copyWith(tabletName: v, validation: state.validationX)),
      ),
    );
    on<_Company>(
      (e, emit) => _updateField(
        e.value,
        state.company,
        (v) => emit(state.copyWith(company: v, validation: state.validationX)),
      ),
    );
    on<_Dosage>(
      (e, emit) => _updateField(
        e.value,
        state.dosage,
        (v) => emit(state.copyWith(dosage: v, validation: state.validationX)),
      ),
    );
    on<_DosageUnit>(
      (e, emit) => emit(
        state.copyWith(
          dosageUnit: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_MorningTimeHour>(
      (e, emit) => emit(
        state.copyWith(
          morningTimeHour: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_MorningTimeMin>(
      (e, emit) => emit(
        state.copyWith(
          morningTimeMin: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_AfternoonTimeHour>(
      (e, emit) => emit(
        state.copyWith(
          afternoonTimeHour: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_AfternoonTimeMin>(
      (e, emit) => emit(
        state.copyWith(
          afternoonTimeMin: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_NightTimeHour>(
      (e, emit) => emit(
        state.copyWith(
          nightTimeHour: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_NightTimeMin>(
      (e, emit) => emit(
        state.copyWith(
          nightTimeMin: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_StartDate>(
      (e, emit) => _updateField(
        e.value,
        state.startDate,
        (v) =>
            emit(state.copyWith(startDate: v, validation: state.validationX)),
      ),
    );
    on<_EndDate>(
      (e, emit) => _updateField(
        e.value,
        state.endDate,
        (v) => emit(state.copyWith(endDate: v, validation: state.validationX)),
      ),
    );
    on<_Note>(
      (e, emit) => _updateField(
        e.value,
        state.note,
        (v) => emit(state.copyWith(note: v, validation: state.validationX)),
      ),
    );
    on<_Media>(
      (e, emit) => _updateField(
        e.value,
        state.media,
        (v) => emit(state.copyWith(media: v, validation: state.validationX)),
      ),
    );
    on<_Frequency>(
      (e, emit) => emit(
        state.copyWith(
          frequency: DropdownValue.dirty(e.value),
          validation: state.validationX,
        ),
      ),
    );
    on<_Submit>(_onSubmit);
  }

  final AddMedicationUsecases _addMedicationUsecase;
  final MedicationFrequencyUsecases _medicationFrequencyUsecases;

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
            frequencies.map((e) {
              return DropItemModel(id: e.id, value: e.frequency);
            }).toList(),
      ),
    );
  }

  void _updateField(
    String value,
    NotEmpty current,
    void Function(NotEmpty) update,
  ) {
    final updated = NotEmpty.dirty(value: value);
    update(updated);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<MedicationFormState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));

    final result = await _addMedicationUsecase(
      payload: MedicationPayload(
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
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }
}
