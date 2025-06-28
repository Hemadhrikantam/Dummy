import 'package:equatable/equatable.dart';

class PetExpense extends Equatable {
  final int id;
  final String date;
  final String category;
  final String notes;
  final String media;
  final int pet;

  const PetExpense({
    required this.id,
    required this.date,
    required this.category,
    required this.notes,
    required this.media,
    required this.pet,
  });

  @override
  List<Object?> get props => [id, date, category, notes, media, pet];
}
