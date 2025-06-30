import 'package:equatable/equatable.dart';

class PetMedication extends Equatable {
  final int id;
  final bool reminder;
  final String tabletName;
  final String company;
  final String startDate;
  final String endDate;

  const PetMedication({
    required this.id,
    required this.reminder,
    required this.tabletName,
    required this.company,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [
    id,
    reminder,
    tabletName,
    company,
    startDate,
    endDate,
  ];
}
