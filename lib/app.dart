import 'package:dummy/core/utils/app_navigation_services.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/routes/app_routes.dart';
import 'package:dummy/splash_screen.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          navigatorObservers: [AppNavigationObervers()],
          navigatorKey: navigatorState,
          routes: AppRoutes.routes,
          home: const SplashScreen(),
        );
  }
}
