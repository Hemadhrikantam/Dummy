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

  Future<void> init() async {
    LogUtility.warning('Initializing Firebase Messaging');
    if (!kIsWeb && _firebaseMessaging != null) {
      LogUtility.warning('Initializing Firebase Messaging');
      await _firebaseMessaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

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

      RemoteMessage? initialMessage =
          await FirebaseMessaging.instance.getInitialMessage();
      if (initialMessage != null) {
        LogUtility.warning(
          'App launched via notification: ${initialMessage.notification?.title}',
        );
      }
    }
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
