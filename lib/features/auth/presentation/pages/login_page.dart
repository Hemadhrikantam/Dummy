import 'package:flutter/material.dart';

import '../widgets/login/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/LoginPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const LoginPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LoginForm();
  }
}
