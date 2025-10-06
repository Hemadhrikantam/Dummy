enum Yourself { pet_parent, lookingAdoption, ngo }

extension StatusX on Yourself {
  bool get isPetParent => this == Yourself.pet_parent;
  bool get isLookingAdoption => this == Yourself.lookingAdoption;
  bool get isNgo => this == Yourself.ngo;
}
