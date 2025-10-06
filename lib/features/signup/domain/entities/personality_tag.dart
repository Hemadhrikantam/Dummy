import 'package:equatable/equatable.dart';

class PersonalityTag extends Equatable {
  final String id;
  final String name;
  final String petType;

  const PersonalityTag({
    required this.id,
    required this.name,
    required this.petType,
  });

  factory PersonalityTag.fromJson(Map<String, dynamic> json) {
    return PersonalityTag(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      petType: json['pet_type'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name, petType];
}
