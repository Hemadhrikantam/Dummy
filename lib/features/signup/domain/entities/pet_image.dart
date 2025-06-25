import 'package:equatable/equatable.dart';

class PetImage extends Equatable {
  final int id;
  final String pet_image;

  const PetImage({required this.id, required this.pet_image});
  
  @override
  List<Object?> get props => [id, pet_image];

}