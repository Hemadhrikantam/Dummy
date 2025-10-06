import 'package:equatable/equatable.dart';

abstract class DropItem extends Equatable {
  const DropItem({required this.id, required this.value});
  final int id;
  final String value;

  @override
  List<Object?> get props => [id, value];

  @override
  String toString() => 'DropItem(id: $id, value: $value,)';
}

abstract class DropStringItem extends Equatable {
  const DropStringItem({required this.id, required this.value});
  final String id;
  final String value;

  @override
  List<Object?> get props => [id, value];

  @override
  String toString() => 'DropItem(id: $id, value: $value,)';
}

class DropItemModel extends DropItem {
  const DropItemModel({required super.id, required super.value});
  factory DropItemModel.fromMap(Map<String, dynamic> map) {
    return DropItemModel(
      id: map['id'] as int? ?? 0,
      value: map['title'] as String? ?? '',
    );
  }
}

class DropStringItemModel extends DropStringItem {
  const DropStringItemModel({required super.id, required super.value});
  factory DropStringItemModel.fromMap(Map<String, dynamic> map) {
    return DropStringItemModel(
      id: map['id'] as String? ?? '',
      value: map['title'] as String? ?? '',
    );
  }
}
