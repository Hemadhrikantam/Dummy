
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';

class TimezoneModel extends Timezone {
  const TimezoneModel({
    required super.id,
    required super.code,
  });

  factory TimezoneModel.fromJson(Map<String, dynamic> json) {
    return TimezoneModel(
      id: json['id'] as int,
      code: json['code'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
    };
  }
}
