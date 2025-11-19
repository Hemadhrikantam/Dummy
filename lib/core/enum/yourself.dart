enum Yourself { pet_parent, seeker, ngo }

extension StatusX on Yourself {
  bool get isPetParent => this == Yourself.pet_parent;
  bool get isSeeker => this == Yourself.seeker;
  bool get isNgo => this == Yourself.ngo;
}

extension YourselfStringX on String {
  Yourself toYourselfEnum() {
    switch (toLowerCase()) {
      case 'pet_parent':
        return Yourself.pet_parent;
      case 'seeker':
        return Yourself.seeker;
      case 'ngo':
        return Yourself.ngo;
      default:
        throw ArgumentError('Invalid Yourself value: $this');
    }
  }
}
