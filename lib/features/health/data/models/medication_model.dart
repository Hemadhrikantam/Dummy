import '../../domain/entities/medication.dart';

class PetMedicationModel extends PetMedication {
  const PetMedicationModel({
    required super.id,
    required super.reminder,
    required super.tabletName,
    required super.company,
    required super.dosage,
    required super.dosageUnit,
    required super.morningTime,
    required super.afternoonTime,
    required super.nightTime,
    required super.startDate,
    required super.endDate,
    required super.note,
    required super.media,
    required super.pet,
    required super.frequency,
  });

  factory PetMedicationModel.fromJson(Map<String, dynamic> json) {
    return PetMedicationModel(
      id: json['id'] as int,
      reminder: json['reminder'] as bool,
      tabletName: json['tablet_name'] as String,
      company: json['company'] as String,
      dosage: (json['dosage'] as num).toDouble(),
      dosageUnit: json['dosage_unit'] as String,
      morningTime: json['morning_time'] as String,
      afternoonTime: json['afternoon_time'] as String,
      nightTime: json['night_time'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      note: json['note'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
      frequency: json['frequency'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
       'id': id,
      'reminder': reminder,
      'tablet_name': tabletName,
      'company': company,
      'dosage': dosage,
      'dosage_unit': dosageUnit,
      'morning_time': morningTime,
      'afternoon_time': afternoonTime,
      'night_time': nightTime,
      'start_date': startDate.toIso8601String(),
      'end_date': endDate.toIso8601String(),
      'note': note,
      'media': media,
      'pet': pet,
      'frequency': frequency,
    };
  }
}
