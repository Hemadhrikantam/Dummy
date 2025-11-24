import 'package:dummy/provider.dart';
import 'package:flutter/material.dart';
import 'di/injection.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  await Firebase.initializeApp();
  await Injection.notificationService.initialize();
  GoogleFonts.config.allowRuntimeFetching = true;
  runApp(const AppProvider());
}
