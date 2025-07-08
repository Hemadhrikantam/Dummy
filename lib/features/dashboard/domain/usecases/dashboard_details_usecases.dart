import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/domain/repositories/dashboard_details_repository.dart';

class DashboardDetailsUsecases {
  DashboardDetailsUsecases(this.dashboardDetailsRepository);

  final DashboardDetailsRepository dashboardDetailsRepository;

  AppTypeResponse<List<DashboardPetDetails>> call() {
    return dashboardDetailsRepository.dashboardPetDetails();
  }
}
