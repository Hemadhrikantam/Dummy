
import 'package:dummy/features/dailycare/domain/entities/remind_before.dart';

class RemindBeforeModel extends RemindBefore {
  const RemindBeforeModel({
    required super.id,
    required super.title,
    required super.days,
  });

  factory RemindBeforeModel.fromJson(Map<String, dynamic> json) {
    return RemindBeforeModel(
      id: json['id'] as int,
      days: json['days'] as int,
      title: json['title'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'days': days,
      'title': title,
    };
  }
}
