import 'package:equatable/equatable.dart';

class DashboardPetDetails extends Equatable {
  const DashboardPetDetails( {
    required this.id,
    required this.petName,
    required this.dob,
    required this.petWeight,
    required this.breed,
    required this.personalityTag,
    required this.petType, 
    required this.trackActivity,
    required this.petImage,
  });


  final int id;
  final String petName;
  final String petType;
  final String dob;
  final double petWeight;
  final bool trackActivity;
  final PetImage petImage;
  final Breed breed;
  final List<PersonalityTag> personalityTag;
 


  @override
  List<Object?> get props => [
    id,
    petName,
    petType,
    dob,
    petWeight,
    trackActivity,
    petImage,
    breed,
    personalityTag,
  ];
}

class PetImage extends Equatable {
  const PetImage({required this.id, required this.petImage});

  final int id;
  final String petImage;

  @override
  List<Object?> get props => [id, petImage];
}


class Breed extends Equatable {
  const Breed({required this.id, required this.petType, required this.breed});

  final int id;
  final String petType;
  final String breed;

  @override
  List<Object?> get props => [id, petType, breed];
}

class PersonalityTag extends Equatable {
  const PersonalityTag({required this.id, required this.personality});

  final int id;
  final String personality;

  @override
  List<Object?> get props => [id, personality];
}