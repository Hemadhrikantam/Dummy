import 'package:equatable/equatable.dart';

class Timezone extends Equatable{
  final int id;
  final String code;

  const Timezone({required this.id, required this.code});

  @override
  List<Object?> get props => [id, code];
}