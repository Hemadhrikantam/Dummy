import 'package:equatable/equatable.dart';

class Media extends Equatable {
  const Media({
    required this.description,
    required this.event,
    required this.id,
    required this.media,
    required this.isFavourite,
  });
  final int id;
  final String media;
  final String description;
  final String event;
  final bool isFavourite;

  @override
  List<Object?> get props => [id, media, event, description, isFavourite];
}
