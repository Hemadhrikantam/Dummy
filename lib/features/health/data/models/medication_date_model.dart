import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';

class MedicationDateModel extends MedicationDate {
  const MedicationDateModel({
    required super.id,
    required super.date,
    required super.morning,
    required super.afternoon,
    required super.night,
  });

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
