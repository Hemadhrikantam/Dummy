import 'package:dio/dio.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:equatable/equatable.dart';



class PetAdoptionPayload extends Equatable implements Payload {
  const PetAdoptionPayload({
    required this.name,
    required this.year,
    required this.months,
    required this.petType,
    required this.address,
    required this.phone,
    required this.email,
    required this.description,
    required this.petImage,
    required this.isAdopted,
    required this.petBreed,
 
  });

  final String name;
  final String year;
  final String months;
  final String petType;
  final String address;
  final String phone;
  final String email;
  final String description;
  final MultipartFile petImage;
  final bool isAdopted;
  final int petBreed;
 
  @override
  List<Object?> get props => [name,year,petType,address,phone,email,description,petImage,isAdopted,petBreed,months];

  @override
  JsonMap toMap() => {
    "name": name,
    "age_years": year,
    "age_months" : months,
    "pet_type": petType,
    "address":address,
    "phone":phone,
    "email":email,
    "description": description,
    "pet_image":petImage,
    "is_adopted": isAdopted,
    "pet_breed_id": petBreed,

  };
}
