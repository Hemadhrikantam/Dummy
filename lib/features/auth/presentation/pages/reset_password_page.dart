import 'package:flutter/material.dart';

import '../widgets/reset_password/reset_password_form.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});
  static const routeName = '/ResetPasswordPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const ResetPasswordPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _ResetPasswordPage();
}

class _ResetPasswordPage extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return ResetPasswordForm();
  }
}
