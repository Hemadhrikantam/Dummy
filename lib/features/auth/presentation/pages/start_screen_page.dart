import 'package:flutter/material.dart';

import '../widgets/start_screen/start_screen_content.dart';

class StartScreenPage extends StatefulWidget {
  const StartScreenPage({super.key});
  static const routeName = '/StartScreenPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const StartScreenPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _StartScreenPage();
}

class _StartScreenPage extends State<StartScreenPage> {
  @override
  Widget build(BuildContext context) {
    return StartScreenContent();
  }
}
