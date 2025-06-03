// import 'package:dummy/core/constent/app_colors.dart';
// import 'package:dummy/core/constent/styles.dart';
// import 'package:dummy/core/extention/app_theme_extention.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:otp_pin_field/otp_pin_field.dart';

// import '../../../../../core/constent/app_text.dart';
// import '../../../../../core/models/formz/not_empty.dart';
// import '../../bloc/auth/auth_bloc.dart';

// class OTPField extends StatefulWidget {
//   const OTPField({super.key});

//   @override
//   State<OTPField> createState() => _OTPFieldState();
// }

// class _OTPFieldState extends State<OTPField> {
//   final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<AuthBloc, AuthState, NotEmpty>(
//       selector: (state) {
//         return state.email;
//       },
//       builder: (context, state) {
//         return Column(
//           children: [
//             Text(
//               AppText.enterOneTimePassword,
//               style: context.textTheme.headlineLarge?.copyWith(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 16,
//               ),
//             ),
//             Styles.gap10,
//             OtpPinField(
//               key: _otpPinFieldController,
//               autoFillEnable: true,
//               textInputAction: TextInputAction.done,
//               onSubmit: (text) {
//                 debugPrint('Entered pin is $text');
//               },
//               onChange: (text) {
//                 debugPrint('Enter on change pin is $text');
//               },
//               onCodeChanged: (code) {
//                 debugPrint('onCodeChanged  is $code');
//               },
//               fieldHeight: 56,
//               fieldWidth: 56,
//               otpPinFieldStyle: const OtpPinFieldStyle(
//                 defaultFieldBackgroundColor: AppColors.white,
//                 defaultFieldBorderColor: AppColors.transparent,
//                 defaultFieldBorderGradient: LinearGradient(
//                   colors: [AppColors.white, AppColors.white],
//                 ),
//                 activeFieldBackgroundColor: AppColors.white,
//                 filledFieldBackgroundColor: AppColors.white,
//                 showHintText: true,
//                 fieldBorderWidth: 3,
//               ),
//               otpPinFieldDecoration:
//                   OtpPinFieldDecoration.defaultPinBoxDecoration,
//               maxLength: 4,
//               showCursor: true,
//               cursorColor: Colors.indigo,
//               upperChild: const Column(
//                 children: [
//                   SizedBox(height: 30),
//                   Icon(Icons.flutter_dash_outlined, size: 150),
//                   SizedBox(height: 20),
//                 ],
//               ),
//               middleChild: Column(
//                 children: [
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       _otpPinFieldController.currentState?.clearOtp();
//                     },
//                     child: const Text('clear OTP'),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       // MaterialPageRoute(
//                       //   builder: (context) => const NextPage(),
//                       // ),
//                       // ),
//                     },

//                     child: const Text('Next Class'),
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
