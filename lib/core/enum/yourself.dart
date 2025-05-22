enum Yourself { petParent, lookingAdoption, ngo }

extension StatusX on Yourself {
  bool get petParent => this == Yourself.petParent;
  bool get lookingAdoption => this == Yourself.lookingAdoption;
  bool get ngo => this == Yourself.ngo;
}
