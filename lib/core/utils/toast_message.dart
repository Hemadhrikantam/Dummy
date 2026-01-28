import 'package:fluttertoast/fluttertoast.dart';

import '../constant/app_colors.dart';

class AppAlert {
  static void showToast({required String message ,ToastGravity? toastGravity}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: toastGravity?? ToastGravity.BOTTOM,
      fontSize: 14,
      webBgColor: 'linear-gradient(to right, #FB8E00, #FB8E00)',
      backgroundColor: AppColors.buttonBackground,
      textColor: AppColors.black,
      webShowClose: true,
    );
  }
}
