import 'package:equatable/equatable.dart';

class Breed extends Equatable {
  final String id;
  final String name;
  final String type;

  const Breed({required this.id, required this.name, required this.type});

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      type: json['type'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name, type];
}
