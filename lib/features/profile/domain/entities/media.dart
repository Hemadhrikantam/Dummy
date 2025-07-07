import 'package:equatable/equatable.dart';

class Media extends Equatable {
  const Media({required this.id, required this.media});
  final int id;
  final String media;
  @override
  List<Object?> get props => [id, media];
}
