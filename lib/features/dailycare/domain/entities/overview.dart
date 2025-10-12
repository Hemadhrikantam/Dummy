import 'package:equatable/equatable.dart';

class Overview extends Equatable {
  final int meals;
  final int walks;
  final int grooming;
  final int deworming;
  final int expenses;

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
