import 'package:equatable/equatable.dart';

class GroomingType extends Equatable {
  final String id;
  final String name;
  final String description;
  final int sortOrder;

  const GroomingType({
    required this.id,
    required this.name,
    required this.description,
    required this.sortOrder,
  });

  factory GroomingType.fromJson(Map<String, dynamic> json) {
    return GroomingType(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      sortOrder: json['sort_order'] ?? 0,
    );
  }

  @override
  List<Object?> get props => [id, name, description, sortOrder];
}