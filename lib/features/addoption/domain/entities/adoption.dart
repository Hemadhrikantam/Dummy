import 'package:equatable/equatable.dart';

class Adoption extends Equatable {
  final int id;
  final String name;
  final double age;
  final String petType;
  final String address;
  final String phone;
  final String email;
  final String description;
  final String petImage;
  final bool isAdopted;
  final PetBreed petBreed;

  const Adoption({
    required this.id,
    required this.name,
    required this.age,
    required this.petType,
    required this.address,
    required this.phone,
    required this.email,
    required this.description,
    required this.petImage,
    required this.isAdopted,
    required this.petBreed,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    age,
    petType,
    address,
    phone,
    email,
    description,
    petImage,
    isAdopted,
    petBreed,
  ];
}


class PetBreed extends Equatable{
  const PetBreed( {
    required this.id, 
    required this.petType, 
    required this.petBreed,
  });

  final int id;
  final String petType;
  final String petBreed;
  
  @override
  List<Object?> get props => [id,petType,petBreed];
  }