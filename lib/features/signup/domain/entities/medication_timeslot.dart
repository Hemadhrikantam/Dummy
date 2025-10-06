import 'package:equatable/equatable.dart';

class MedicationTimeslot extends Equatable {
  final String id;
  final String name;
  final String defaultTime;
  final int sortOrder;

  const MedicationTimeslot({
    required this.id,
    required this.name,
    required this.defaultTime,
    required this.sortOrder,
  });

  factory MedicationTimeslot.fromJson(Map<String, dynamic> json) {
    return MedicationTimeslot(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      defaultTime: json['default_time'] ?? '',
      sortOrder: json['sort_order'] ?? 0,
    );
  }

  @override
  List<Object?> get props => [id, name, defaultTime, sortOrder];
}
