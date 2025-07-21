import 'package:dummy/features/dailycare/domain/entities/overview.dart';

class OverviewModel extends Overview {
  const OverviewModel({
    required super.meals,
    required super.walks,
    required super.grooming,
    required super.deworming,
    required super.expenses,
  });

  factory OverviewModel.fromJson(Map<String, dynamic> json) {
    return OverviewModel(
      meals : json['meals'] ,
      walks: json['walks'], 
      grooming: json['grooming'],
      deworming: json['deworming'],
      expenses: json['expenses'],
    );
  }
}
