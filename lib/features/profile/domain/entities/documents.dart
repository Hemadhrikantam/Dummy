import 'package:equatable/equatable.dart';

class Documents extends Equatable {
  const Documents({
    required this.id,
    required this.petId,
    required this.uploadedBy,
    required this.fileUrl,
    required this.fileName,
    required this.fileSize,
    this.notes,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String petId;
  final String uploadedBy;
  final String fileUrl;
  final String fileName;
  final int fileSize;
  final String? notes;
  final bool isDeleted;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
    id,
    petId,
    uploadedBy,
    fileUrl,
    fileName,
    fileSize,
    notes,
    isDeleted,
    createdAt,
    updatedAt,
  ];
}
