import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/notification.dart';
import 'package:dummy/features/dashboard/domain/repositories/dashboard_details_repository.dart';

class NotificationsUsecases {
  NotificationsUsecases(this.repository);

  final DashboardDetailsRepository repository;

  AppTypeResponse<List<DashboardNotification>> call() {
    return repository.notifications();
  }
}

