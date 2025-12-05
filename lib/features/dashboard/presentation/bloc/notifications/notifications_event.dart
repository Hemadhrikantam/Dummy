part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.init() = _Init;
  const factory NotificationsEvent.getNotifications() = _GetNotifications;
}
