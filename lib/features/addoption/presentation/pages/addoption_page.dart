import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';

class AddoptionPage extends StatefulWidget {
  const AddoptionPage({super.key});

  @override
  createState() => _AddoptionPage();
}

class _AddoptionPage extends State<AddoptionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(child: Center(child: Text('Addoption')));
  }
}
