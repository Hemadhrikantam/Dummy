import 'package:dummy/core/widgets/base_screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

	@override
	createState() => _HomePage();
}
class _HomePage extends State<HomePage> {
	@override
	Widget build(BuildContext context) {
		return MaterialBaseScreen(child: Center(child: Text('Home')));
	}
}
