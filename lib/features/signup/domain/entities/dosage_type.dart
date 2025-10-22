import 'package:equatable/equatable.dart';

class DosageType extends Equatable {
  final String id;
  final String name;
  final String description;

  const DosageType({
    required this.id,
    required this.name,
    required this.description,
  });

  factory DosageType.fromJson(Map<String, dynamic> json) {
    return DosageType(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name, description];
}