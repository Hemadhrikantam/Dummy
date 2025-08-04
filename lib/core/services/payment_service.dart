// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:dio/dio.dart';

// class PaymentService {
//   static final Dio _dio = Dio();

//   static Future<void> generate({
//     required int amount,
//     required VoidCallback onSuccess,
//     required Function(String error) onError,
//     required VoidCallback onBack,
//   }) async {
//     try {
//       final response = await _dio.post(
//         'https://your-backend.com/create-payment-intent',
//         data: {'amount': amount, 'currency': 'inr'},
//         options: Options(headers: {'Content-Type': 'application/json'}),
//       );
//       final clientSecret = response.data['clientSecret'];

//       if (clientSecret == null) {
//         onError("Missing client secret");
//         return;
//       }
//       await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//           paymentIntentClientSecret: clientSecret,
//           merchantDisplayName: 'Doommi',
//           style: ThemeMode.light,
//           allowsDelayedPaymentMethods: false,
//         ),
//       );

//       // 3. Present payment sheet
//       await Stripe.instance.presentPaymentSheet();

//       onSuccess();
//     } on DioException catch (e) {
//       onError("Dio error: ${e.message}");
//     } on StripeException catch (e) {
//       onError("Stripe error: ${e.error.localizedMessage}");
//     } catch (e) {
//       onError("Unexpected error: $e");
//     }
//   }
// }
