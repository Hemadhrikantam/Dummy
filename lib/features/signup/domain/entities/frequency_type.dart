import 'package:equatable/equatable.dart';

class FrequencyType extends Equatable {
  final String id;
  final String name;
  final String description;
  final int sortOrder;
  final String frequencyType;
  final int intervalValue;
  final String intervalUnit;

  const FrequencyType({
    required this.id,
    required this.name,
    required this.description,
    required this.sortOrder,
    required this.frequencyType,
    required this.intervalValue,
    required this.intervalUnit,
  });

  factory FrequencyType.fromJson(Map<String, dynamic> json) {
    return FrequencyType(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      sortOrder: json['sort_order'] ?? 0,
      frequencyType: json['frequency_type'] ?? '',
      intervalValue: json['interval_value'] ?? 0,
      intervalUnit: json['interval_unit'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    sortOrder,
    frequencyType,
    intervalValue,
    intervalUnit,
  ];
}
