import 'package:equatable/equatable.dart';

class MedicationDate extends Equatable {
  final int id;
  final DateTime date;
  final bool morning;
  final bool afternoon;
  final bool night;

  const MedicationDate({
    required this.id,
    required this.date,
    required this.morning,
    required this.afternoon,
    required this.night,
  });
  MedicationDate copyWith({
    int? id,
    DateTime? date,
    bool? morning,
    bool? afternoon,
    bool? night,
  }) {
    return MedicationDate(
      id: id ?? this.id,
      date: date ?? this.date,
      morning: morning ?? this.morning,
      afternoon: afternoon ?? this.afternoon,
      night: night ?? this.night,
    );
  }

  @override
  List<Object?> get props => [id, date, morning, afternoon, night];
}
