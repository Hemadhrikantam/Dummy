import 'package:dummy/provider.dart';
import 'package:flutter/material.dart';
import 'di/injection.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  await Firebase.initializeApp();
  await Injection.notificationService.initialize();
  runApp(const AppProvider());
}
