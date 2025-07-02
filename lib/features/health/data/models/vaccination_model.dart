import '../../domain/entities/vaccination.dart';

class PetVaccinationModel extends PetVaccination {
  const PetVaccinationModel({
    required super.id,
    required super.reminder,
    required super.vaccinationName,
    required super.company,
    required super.dateAdministered,
    required super.dueDate,
  });

  factory PetVaccinationModel.fromJson(Map<String, dynamic> json) {
    return PetVaccinationModel(
      id: json['id'] as int,
      reminder: json['reminder'] as bool,
      vaccinationName: json['vaccination_name'] as String,
      company: json['company'] as String,
      dateAdministered: json['start_date'] as String,
      dueDate: json['due_date'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reminder': reminder,
      'vaccination_name': vaccinationName,
      'company': company,
      'Date_administered': dateAdministered,
      'due_date': dueDate,
    };
  }
}
