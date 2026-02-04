import 'dart:async';

import 'package:dummy/core/services/app_network_service_impl.dart';
import 'package:dummy/core/utils/app_navigation_services.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_dialog.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/routes/app_routes.dart';
import 'package:dummy/service/app_network_service.dart';
import 'package:dummy/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver{
  late final AppNetworkService _networkChecker;
  bool _isDialogShown = false;
  late StreamSubscription<AppNetworkStatus> _subscription;

  @override
  void initState() {
    super.initState();
    _networkChecker = AppNetworkCheckerImpl();

    _subscription = _networkChecker.onStatusChanged.listen((status) {
      if (status == AppNetworkStatus.offline && !_isDialogShown) {
        _isDialogShown = true;

        if (navigatorState.currentContext != null) {
          LogUtility.error('line 35 network not available');
          AppDialog.internetGlitchDialog(navigatorState.currentContext!);
        }
        Future.delayed(const Duration(seconds: 5), () {
          _isDialogShown = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _networkChecker.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      navigatorObservers: [AppNavigationObervers()],
      navigatorKey: navigatorState,
      routes: AppRoutes.routes,
      theme: ThemeData(
        fontFamily: 'InstrumentSans',
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0),
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
