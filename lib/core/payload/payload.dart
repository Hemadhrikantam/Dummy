import '../utils/type_def.dart';

/// [Payload] for api Call
abstract class Payload {
  const Payload();

  /// Conver field in to M
  /// ap object when calling api
  JsonMap toMap();
}
