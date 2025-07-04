import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';

class MedicationDateModel extends MedicationDate {
  const MedicationDateModel({
    required int id,
    required DateTime date,
    required bool morning,
    required bool afternoon,
    required bool night,
  }) : super(
          id: id,
          date: date,
          morning: morning,
          afternoon: afternoon,
          night: night,
        );

  factory MedicationDateModel.fromJson(Map<String, dynamic> json) {
    return MedicationDateModel(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      morning: json['morning'] as bool,
      afternoon: json['afternoon'] as bool,
      night: json['night'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': AppUtil.formatDate(date),
      'morning': morning,
      'afternoon': afternoon,
      'night': night,
    };
  }
}
