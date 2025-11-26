import 'dart:core';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FirebaseMessaging? _firebaseMessaging;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  NotificationService(this._firebaseMessaging);

  // Explicit permission request entrypoint (call this where you want to prompt)
  Future<void> init() async {
    LogUtility.warning('Requesting notification permission');
    if (kIsWeb || _firebaseMessaging == null) return;

    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    LogUtility.warning(
      'Notification permission: ${settings.authorizationStatus}',
    );

    // After permission flow, proceed with listeners/local notifications
    await _initializeInternals();

    // Log FCM token for backend registration
    try {
      final token = await getToken();
      if (token != null) {
        LogUtility.info('Notification initialize success with fcm: $token');
      } else {
        LogUtility.warning(
          'Notification initialize completed, but FCM token is null',
        );
      }
    } catch (e) {
      LogUtility.error('Failed to fetch FCM token after init: $e');
    }
  }

  // Startup initialization without prompting (use in main.dart)
  Future<void> initialize() async {
    LogUtility.warning('Initializing notifications without prompting');
    if (kIsWeb || _firebaseMessaging == null) return;

    // Optionally inspect current settings; do not prompt here
    try {
      final settings =
          await FirebaseMessaging.instance.getNotificationSettings();
      LogUtility.warning(
        'Current notification settings: ${settings.authorizationStatus}',
      );
      await _initializeInternals();
    } catch (_) {}

    // Log FCM token for backend registration
    try {
      final token = await getToken();
      if (token != null) {
        LogUtility.info('Notification initialize success with fcm: $token');
      } else {
        LogUtility.warning(
          'Notification initialize completed, but FCM token is null',
        );
      }
    } catch (e) {
      LogUtility.error('Failed to fetch FCM token during initialize: $e');
    }
  }

  Future<void> _initializeInternals() async {
    await _initLocalNotification();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      LogUtility.warning(
        'Foreground message received: ${message.notification?.title}',
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      LogUtility.warning(
        'Notification caused app to open: ${message.notification?.title}',
      );
    });

    // Handle initial notification that launched the app
    try {
      final initialMessage =
          await FirebaseMessaging.instance.getInitialMessage();
      if (initialMessage != null) {
        LogUtility.warning(
          'App launched via notification: ${initialMessage.notification?.title}',
        );
      }
    } catch (_) {}
  }

  Future<void> _initLocalNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging?.getToken();
  }

  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;
  Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp;
}
