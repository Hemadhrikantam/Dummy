import '../../domain/entities/medication.dart';

class PetMedicationModel extends PetMedication {
  const PetMedicationModel({
    required int id,
    required bool reminder,
    required String tabletName,
    required String company,
    required double dosage,
    required String dosageUnit,
    required String morningTime,
    required String afternoonTime,
    required String nightTime,
    required DateTime startDate,
    required DateTime endDate,
    required String note,
    required String media,
    required int pet,
    required int frequency,
  }) : super(
         id: id,
         reminder: reminder,
         tabletName: tabletName,
         company: company,
         dosage: dosage,
         dosageUnit: dosageUnit,
         morningTime: morningTime,
         afternoonTime: afternoonTime,
         nightTime: nightTime,
         startDate: startDate,
         endDate: endDate,
         note: note,
         media: media,
         pet: pet,
         frequency: frequency,
       );

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
