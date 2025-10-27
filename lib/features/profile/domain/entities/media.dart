import 'package:equatable/equatable.dart';

class Media extends Equatable {
  const Media({
    required this.id,
    required this.petId,
    required this.uploadedBy,
    required this.fileUrl,
    required this.fileType,
    required this.fileSize,
    this.notes,
    required this.eventTypeId,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.eventTypeName,
    required this.isFavorited,
  });

  final String id;
  final String petId;
  final String uploadedBy;
  final String fileUrl;
  final String fileType;
  final int fileSize;
  final String? notes;
  final String eventTypeId;
  final bool isDeleted;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String eventTypeName;
  final bool isFavorited;

  @override
  List<Object?> get props => [
    id,
    petId,
    uploadedBy,
    fileUrl,
    fileType,
    fileSize,
    notes,
    eventTypeId,
    isDeleted,
    createdAt,
    updatedAt,
    eventTypeName,
    isFavorited,
  ];
}
