part of 'medication_details_bloc.dart';

@freezed
abstract class MedicationDetailsEvent with _$MedicationDetailsEvent {
  const factory MedicationDetailsEvent.init(String id) = _Init;
  const factory MedicationDetailsEvent.getDate(DateTime date) = _GetDate;
  const factory MedicationDetailsEvent.updateDate(MedicationDate value) =
      _UpdateDate;
}
