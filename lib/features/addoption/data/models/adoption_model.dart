import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';

class AdoptionModel extends Adoption{
  const AdoptionModel({required super.id, required super.name, required super.age, required super.petType, required super.address, required super.phone, required super.email, required super.description, required super.petImage, required super.isAdopted, required super.petBreed});

  factory AdoptionModel.fromMap(JsonMap json) => AdoptionModel(
        id: json["id"],
        name: json["name"] ??'',
        age: json["age"] ?? 0,
        petType: json["pet_type"]??'',
        address: json["address"]??'',
        phone: json["phone"]??'',
        email: json["email"]??'',
        description: json["description"]??'',
        petImage: json["pet_image"]??'',
        isAdopted: json["is_adopted"]??false,
        petBreed: json["pet_breed"]?? 0,
    );

}