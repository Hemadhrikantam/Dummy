import 'package:equatable/equatable.dart';

class MealType extends Equatable {
  final String id;
  final String name;
  final String description;
  final int sortOrder;

  const MealType({
    required this.id,
    required this.name,
    required this.description,
    required this.sortOrder,
  });

  factory MealType.fromJson(Map<String, dynamic> json) {
    return MealType(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      sortOrder: json['sort_order'] ?? 0,
    );
  }

  @override
  List<Object?> get props => [id, name, description, sortOrder];
}