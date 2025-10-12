import 'package:equatable/equatable.dart';

class DashboardPetDetails extends Equatable {
  const DashboardPetDetails({
    required this.id,
    required this.name,
    required this.type,
    required this.breedId,
    required this.breedName,
    required this.gender,
    required this.dob,
    required this.weightValue,
    required this.weightUnit,
    this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.personalityTags,
  });

  final String id;
  final String name;
  final String type;
  final String gender;
  final String breedId;
  final String breedName;
  final String dob;
  final String weightValue;
  final String weightUnit;
  final String? imageUrl;
  final String createdAt;
  final String updatedAt;
  final List<String> personalityTags;

  @override
  List<Object?> get props => [
    id,
    name,
    type,
    breedId,
    breedName,
    dob,
    gender,
    weightValue,
    weightUnit,
    imageUrl,
    createdAt,
    updatedAt,
    personalityTags,
  ];
}
