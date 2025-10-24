import 'package:equatable/equatable.dart';

class MediaItem extends Equatable {
  final String? id;
  final String? petId;
  final String? entityType;
  final String? entityId;
  final String? uploadedBy;
  final String? fileUrl;
  final String? fileType;
  final String? fileSize;
  final String? mediaCaption;
  final int? sortOrder;
  final bool? isCover;
  final bool? isDeleted;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const MediaItem({
    this.id,
    this.petId,
    this.entityType,
    this.entityId,
    this.uploadedBy,
    this.fileUrl,
    this.fileType,
    this.fileSize,
    this.mediaCaption,
    this.sortOrder,
    this.isCover,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    petId,
    entityType,
    entityId,
    uploadedBy,
    fileUrl,
    fileType,
    fileSize,
    mediaCaption,
    sortOrder,
    isCover,
    isDeleted,
    createdAt,
    updatedAt,
  ];
}

class PetMeal extends Equatable {
  final String id;
  final String date;
  final String timeOfMeal;
  final String mealType;
  final String notes;
  final List<MediaItem> media;
  final String pet;
  final String? mealTypeId;
  final String? mealTypeName;
  final String? createdById;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const PetMeal({
    required this.id,
    required this.date,
    required this.timeOfMeal,
    required this.mealType,
    required this.notes,
    required this.media,
    required this.pet,
    this.mealTypeId,
    this.mealTypeName,
    this.createdById,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    date,
    timeOfMeal,
    mealType,
    notes,
    media,
    pet,
    mealTypeId,
    mealTypeName,
    createdById,
    createdAt,
    updatedAt,
  ];
}
