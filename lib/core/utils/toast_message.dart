import 'package:fluttertoast/fluttertoast.dart';

import '../constent/app_colors.dart';

class AppAlert {
  static void showToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      fontSize: 14,
      webBgColor: 'linear-gradient(to right, #FB8E00, #FB8E00)',
      backgroundColor: AppColors.white,
      textColor: AppColors.black,
      webShowClose: true,
    );
  }
}
