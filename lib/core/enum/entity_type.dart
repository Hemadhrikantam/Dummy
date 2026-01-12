enum EntityType {
  diary_media,
  document,
  vaccination,
  medication,
  meal,
  walk,
  grooming,
  deworming,
  expense,
  timeline,
}

extension EntityTypeX on EntityType {
  String get value {
    switch (this) {
      case EntityType.diary_media:
        return 'diary_media';
      case EntityType.document:
        return 'document';
      case EntityType.vaccination:
        return 'vaccination';
      case EntityType.medication:
        return 'medication';
      case EntityType.meal:
        return 'meal';
      case EntityType.walk:
        return 'walk';
      case EntityType.grooming:
        return 'grooming';
      case EntityType.deworming:
        return 'deworming';
      case EntityType.expense:
        return 'expense';
      case EntityType.timeline:
        return 'timeline';
    }
  }
}

extension StringToEntityType on String {
  EntityType toEntityType() {
    switch (toLowerCase()) {
      case 'media':
        return EntityType.diary_media;
      case 'document':
        return EntityType.document;
      case 'vaccination':
        return EntityType.vaccination;
      case 'medication':
        return EntityType.medication;
      case 'meal':
        return EntityType.meal;
      case 'walk':
        return EntityType.walk;
      case 'grooming':
        return EntityType.grooming;
      case 'deworming':
        return EntityType.deworming;
      case 'expense':
        return EntityType.expense;
      case 'timeline':
        return EntityType.timeline;
      default:
        throw ArgumentError('Unknown EntityType: $this');
    }
  }
}
