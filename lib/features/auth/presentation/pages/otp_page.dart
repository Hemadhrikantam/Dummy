import 'package:flutter/material.dart';

import '../widgets/otp/otp_form.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});
  static const routeName = '/OTPPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const OTPPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _OTPPage();
}

class _OTPPage extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return OTPForm();
  }
}
