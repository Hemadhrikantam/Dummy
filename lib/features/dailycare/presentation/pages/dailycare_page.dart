import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';

class DailycarePage extends StatefulWidget {
  const DailycarePage({super.key});

  @override
  createState() => _DailycarePage();
}

class _DailycarePage extends State<DailycarePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(child: Center(child: Text('Daily Care')));
  }
}
