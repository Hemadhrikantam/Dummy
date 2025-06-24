enum Yourself { petParent, lookingAdoption, ngo }

extension StatusX on Yourself {
  bool get isPetParent => this == Yourself.petParent;
  bool get isLookingAdoption => this == Yourself.lookingAdoption;
  bool get isNgo => this == Yourself.ngo;
}
