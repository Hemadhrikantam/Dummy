import '../../domain/entities/send_otp.dart';

class SendOtpModel extends SendOtp {
  const SendOtpModel({required super.message, required super.isRegistered});

  factory SendOtpModel.fromMap(Map<String, dynamic> map) {
    return SendOtpModel(
      message: map['message'] ?? '',
      isRegistered: map['isRegistered'] ?? false,
    );
  }
}
