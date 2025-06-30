part of 'medications_bloc.dart';

@freezed
class MedicationsEvent with _$MedicationsEvent {
  const factory MedicationsEvent.init() = _Init;
  const factory MedicationsEvent.medications(String? key) = _Medications;
}
