import '../../domain/entities/medication.dart';

class PetMedicationModel extends PetMedication {
  const PetMedicationModel({
    required super.id,
    required super.reminder,
    required super.tabletName,
    required super.company,
    required super.startDate,
    required super.endDate,
  });

  factory PetMedicationModel.fromJson(Map<String, dynamic> json) {
    return PetMedicationModel(
      id: json['id'] as int,
      reminder: json['reminder'] as bool,
      tabletName: json['tablet_name'] as String,
      company: json['company'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reminder': reminder,
      'tablet_name': tabletName,
      'company': company,
      'start_date': startDate,
      'end_date': endDate,
    };
  }
}
