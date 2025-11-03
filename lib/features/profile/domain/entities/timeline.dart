import 'package:equatable/equatable.dart';

class TimelineMetadata extends Equatable {
  final String? productName;
  final String? eventName;
  final String? dueDate; // normalized YYYY-MM-DD
  final bool? isActive;

  const TimelineMetadata({
    this.productName,
    this.eventName,
    this.dueDate,
    this.isActive,
  });

  @override
  List<Object?> get props => [productName, eventName, dueDate, isActive];
}

class Timeline extends Equatable {
  final String id;
  final String type; // e.g., "deworming"
  final String petId;
  final String eventDate; // normalized YYYY-MM-DD
  final String? eventTime; // HH:mm:ss or null
  final String title;
  final String? notes;
  final bool isSpecialMemory;
  final bool isFavourite;
  final int mediaCount;
  final List<String> mediaUrls;
  final DateTime? createdAt;
  final String? createdBy;
  final TimelineMetadata? metadata;

  const Timeline({
    required this.id,
    required this.type,
    required this.petId,
    required this.eventDate,
    required this.title,
    required this.isSpecialMemory,
    required this.isFavourite,
    required this.mediaCount,
    required this.mediaUrls,
    this.eventTime,
    this.notes,
    this.createdAt,
    this.createdBy,
    this.metadata,
  });

  @override
  List<Object?> get props => [
        id,
        type,
        petId,
        eventDate,
        eventTime,
        title,
        notes,
        isSpecialMemory,
        isFavourite,
        mediaCount,
        mediaUrls,
        createdAt,
        createdBy,
        metadata,
      ];
}