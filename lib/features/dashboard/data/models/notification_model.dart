import 'package:dummy/features/dashboard/domain/entities/notification.dart';
import 'package:dummy/core/utils/type_def.dart';

class NotificationModel extends DashboardNotification {
  const NotificationModel({
    required super.userNotificationId,
    required super.isRead,
    super.readAt,
    required super.notificationId,
    required super.title,
    required super.body,
    super.entityType,
    super.entityId,
    super.notificationType,
    required super.data,
    required super.priority,
    required super.deliveryChannel,
    required super.sentAt,
    required super.createdAt,
  });

  factory NotificationModel.fromMap(JsonMap json) {
    final dataJson = (json['data'] ?? {}) as Map<String, dynamic>;
    final data = NotificationData(
      petId: (dataJson['pet_id'] ?? '').toString(),
      timezone: (dataJson['timezone'] ?? '').toString(),
      scheduleId: dataJson['schedule_id']?.toString(),
      medicationId: dataJson['medication_id']?.toString(),
    );

    return NotificationModel(
      userNotificationId: (json['user_notification_id'] ?? '').toString(),
      isRead: json['is_read'] == true,
      readAt: json['read_at']?.toString(),
      notificationId: (json['notification_id'] ?? '').toString(),
      title: (json['title'] ?? '').toString(),
      body: (json['body'] ?? '').toString(),
      entityType: json['entity_type']?.toString(),
      entityId: json['entity_id']?.toString(),
      notificationType: json['notification_type']?.toString(),
      data: data,
      priority: (json['priority'] ?? '').toString(),
      deliveryChannel: (json['delivery_channel'] ?? '').toString(),
      sentAt: (json['sent_at'] ?? '').toString(),
      createdAt: (json['created_at'] ?? '').toString(),
    );
  }
}
