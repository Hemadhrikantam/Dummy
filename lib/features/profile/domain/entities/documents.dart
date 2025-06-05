import 'package:equatable/equatable.dart';

class Documents extends Equatable {
  const Documents({
    required this.id,
    required this.user,
    required this.pet,
    required this.document,
    required this.uploadedAt,
  });
  final int id;
  final String user;
  final String pet;
  final String document;
  final String uploadedAt;
  @override
  List<Object?> get props => [id, user, pet, uploadedAt, document];
}
