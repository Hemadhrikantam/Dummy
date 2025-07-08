import '../../domain/entities/vaccination.dart';

class PetVaccinationModel extends PetVaccination {
  const PetVaccinationModel({
    required int id,
    required String vaccinationName,
    required String company,
    required bool isGiven,
    required DateTime dateAdministered,
    required DateTime dueDate,
    required String note,
    required String reminderTime,
    required String media,
    required int frequency,
  }) : super(
         id: id,
         vaccinationName: vaccinationName,
         company: company,
         isGiven: isGiven,
         dateAdministered: dateAdministered,
         dueDate: dueDate,
         note: note,
         reminderTime: reminderTime,
         media: media,
         frequency: frequency,
       );

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
