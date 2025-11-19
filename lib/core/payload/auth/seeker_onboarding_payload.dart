import 'package:dummy/core/payload/payload.dart';

class SeekerOnboardingPayload implements Payload {
  final String mobileNumber;
  final String latitude;
  final String longitude;

  SeekerOnboardingPayload({
    required this.mobileNumber,
    required this.latitude,
    required this.longitude,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'mobile_number': mobileNumber,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}