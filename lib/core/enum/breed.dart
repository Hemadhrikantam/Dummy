enum PetType { Cat, Dog }

extension StatusX on PetType {
  bool get Cat => this == PetType.Cat;
  bool get Dog => this == PetType.Dog;
}
