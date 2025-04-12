import 'package:dummy/core/widgets/base_screen.dart';
import 'package:flutter/material.dart';


class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

	@override
	createState() => _HealthPage();
}
class _HealthPage extends State<HealthPage> {
	@override
	Widget build(BuildContext context) {
		return MaterialBaseScreen(child: Center(child: Text('Health')));
	}
}
