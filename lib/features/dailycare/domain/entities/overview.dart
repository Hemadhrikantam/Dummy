import 'package:equatable/equatable.dart';

class Overview extends Equatable {
  final String meals;
  final String walks;
  final String grooming;
  final String deworming;
  final String expenses;

  const Overview({
    required this.meals,
    required this.walks,
    required this.grooming,
    required this.deworming,
    required this.expenses,
  });

  @override
  List<Object?> get props => [meals, walks, grooming, deworming, expenses];
}
