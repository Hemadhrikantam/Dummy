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
      meals: json['summary']['meals']['count'],
      walks: json['summary']['walks']['count'],
      grooming: json['summary']['grooming']['count'],
      deworming: json['summary']['deworming']['count'],
      expenses: json['summary']['expenses'][0]['count'],
    );
  }
}
