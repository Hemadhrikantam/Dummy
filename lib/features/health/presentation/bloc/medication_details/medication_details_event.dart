part of 'medication_details_bloc.dart';

@freezed
abstract class MedicationDetailsEvent with _$MedicationDetailsEvent {
  const factory MedicationDetailsEvent.init(String id) = _Init;
  const factory MedicationDetailsEvent.loadLogs() = _LoadLogs;
  const factory MedicationDetailsEvent.updateLog(MedicationLog value) =
      _UpdateLog;
}
