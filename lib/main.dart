import 'package:dummy/provider.dart';
import 'package:flutter/material.dart';
import 'di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  runApp(const AppProvider());
}
