// class LoginModel {
//   final String email;
//   final String password;

//   LoginModel({required this.email, required this.password});

//   Map<String, dynamic> toMap() {
//     return {'email': email, 'password': password};
//   }
// }


class LoginModel {
  final String phone;
  final String otp;

  LoginModel({required this.phone, required this.otp});

  Map<String,dynamic>toMap(){
    return {
      'phone': phone,
      'otp':otp,
    };
  }
}