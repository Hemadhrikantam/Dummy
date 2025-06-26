import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/data/models/dashboard_details_model.dart';

abstract class DashboardDetailsRepository {
  const DashboardDetailsRepository();

    AppTypeResponse<List<DashboardDetailsModel>>  dashboardPetDetails();
   
}