import 'package:equatable/equatable.dart';

class NotificationData extends Equatable {
  const NotificationData({
    required this.petId,
    required this.timezone,
    this.scheduleId,
    this.medicationId,
  });

  final String petId;
  final String timezone;
  final String? scheduleId;
  final String? medicationId;

  @override
  List<Object?> get props => [petId, timezone, scheduleId, medicationId];
}

class DashboardNotification extends Equatable {
  const DashboardNotification({
    required this.userNotificationId,
    required this.isRead,
    this.readAt,
    required this.notificationId,
    required this.title,
    required this.body,
    this.entityType,
    this.entityId,
    this.notificationType,
    required this.data,
    required this.priority,
    required this.deliveryChannel,
    required this.sentAt,
    required this.createdAt,
  });

  final String userNotificationId;
  final bool isRead;
  final String? readAt;
  final String notificationId;
  final String title;
  final String body;
  final String? entityType;
  final String? entityId;
  final String? notificationType;
  final NotificationData data;
  final String priority;
  final String deliveryChannel;
  final String sentAt;
  final String createdAt;

  @override
  List<Object?> get props => [
    userNotificationId,
    isRead,
    readAt,
    notificationId,
    title,
    body,
    entityType,
    entityId,
    notificationType,
    data,
    priority,
    deliveryChannel,
    sentAt,
    createdAt,
  ];
}
