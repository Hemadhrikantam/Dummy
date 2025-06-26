import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/data/datasources/dashboard_details_datasource.dart';
import 'package:dummy/features/dashboard/data/models/dashboard_details_model.dart';
import 'package:dummy/features/dashboard/domain/repositories/dashboard_details_repository.dart';

class DashboardDetailsRepositoryImpl extends DashboardDetailsRepository {
  DashboardDetailsRepositoryImpl(this._dashboardDetailsDatasource);
  
  final DashboardDetailsDatasource _dashboardDetailsDatasource;
  
  @override
  AppTypeResponse <List<DashboardDetailsModel>> dashboardPetDetails() {
    return _dashboardDetailsDatasource.dashboardPetDetails();
  }
}
