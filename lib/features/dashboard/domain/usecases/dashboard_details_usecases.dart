import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/data/models/dashboard_details_model.dart';
import 'package:dummy/features/dashboard/domain/repositories/dashboard_details_repository.dart';

class DashboardDetailsUsecases {
  DashboardDetailsUsecases(this.dashboardDetailsRepository);

  final DashboardDetailsRepository dashboardDetailsRepository;

  AppTypeResponse<List<DashboardDetailsModel>> call() {
    return dashboardDetailsRepository.dashboardPetDetails();
  }
}
