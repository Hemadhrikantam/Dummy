import '../../domain/entities/vaccination.dart';

class PetVaccinationModel extends PetVaccination {
  const PetVaccinationModel({
    required super.id,
    required super.vaccinationName,
    required super.company,
    required super.isGiven,
    required super.dateAdministered,
    required super.dueDate,
    required super.note,
    required super.reminderTime,
    required super.media,
    required super.frequency,
  });

  factory PetVaccinationModel.fromJson(Map<String, dynamic> json) {
    return PetVaccinationModel(
      id: json['id'],
      vaccinationName: json['vaccination_name'],
      company: json['company'],
      isGiven: json['is_given'],
      dateAdministered: DateTime.parse(json['Date_administered']),
      dueDate: DateTime.parse(json['due_date']),
      note: json['note'],
      reminderTime: json['reminder_time'],
      media: json['media'],
      frequency: json['frequency'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'vaccination_name': vaccinationName,
      'company': company,
      'is_given': isGiven,
      'Date_administered': dateAdministered.toIso8601String(),
      'due_date': dueDate.toIso8601String(),
      'note': note,
      'reminder_time': reminderTime,
      'media': media,
      'frequency': frequency,
    };
  }
}
