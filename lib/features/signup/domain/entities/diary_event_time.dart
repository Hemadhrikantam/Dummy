import 'package:equatable/equatable.dart';

class DiaryEventType extends Equatable {
  final String id;
  final String name;
  final String description;
  final int sortOrder;

  const DiaryEventType({
    required this.id,
    required this.name,
    required this.description,
    required this.sortOrder,
  });

  factory DiaryEventType.fromJson(Map<String, dynamic> json) {
    return DiaryEventType(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      sortOrder: json['sort_order'] ?? 0,
    );
  }

  @override
  List<Object?> get props => [id, name, description, sortOrder];
}
