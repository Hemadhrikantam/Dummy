import '../../domain/entities/frequency.dart';

class FrequencyModel extends Frequency {
  const FrequencyModel({
    required super.id,
    required super.frequency,
  });

  factory FrequencyModel.fromJson(Map<String, dynamic> json) {
    return FrequencyModel(
      id: json['id'] as int,
      frequency: json['frequency'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'frequency': frequency,
    };
  }
}
