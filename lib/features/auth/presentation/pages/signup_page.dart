import 'package:flutter/material.dart';

import '../widgets/signup/signup_form.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  static const routeName = '/SignupPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const SignupPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SignupForm();
  }
}
