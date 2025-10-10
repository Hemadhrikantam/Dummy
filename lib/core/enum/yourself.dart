enum Yourself { pet_parent, lookingAdoption, ngo }

extension StatusX on Yourself {
  bool get isPetParent => this == Yourself.pet_parent;
  bool get isLookingAdoption => this == Yourself.lookingAdoption;
  bool get isNgo => this == Yourself.ngo;
}

extension YourselfStringX on String {
  Yourself toYourselfEnum() {
    switch (toLowerCase()) {
      case 'pet_parent':
        return Yourself.pet_parent;
      case 'lookingadoption':
        return Yourself.lookingAdoption;
      case 'ngo':
        return Yourself.ngo;
      default:
        throw ArgumentError('Invalid Yourself value: $this');
    }
  }
}
