import 'package:flutter/material.dart';

import '../../features/profile/presentation/widgets/logout_confirm_dialog_content.dart';

class CustomDialog {
  static Future<T?> logoutConfirmDialog<T>(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(child: LogoutConfirmDialogContent());
      },
    );
  }
}
