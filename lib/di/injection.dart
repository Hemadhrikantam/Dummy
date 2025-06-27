import 'package:dio/dio.dart';
import 'package:dummy/core/services/http_service_impl.dart';
import 'package:dummy/core/services/local_storage_impl.dart';
import 'package:dummy/core/services/navigation_service.dart';
import 'package:dummy/core/utils/custom_interceptors.dart';
import 'package:dummy/features/auth/domain/usecases/register_user_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/send_otp_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource_impl.dart';
import 'package:dummy/features/dailycare/data/repositories/daily_care_repository_impl.dart';
import 'package:dummy/features/dailycare/domain/repositories/daily_care_repository.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_meal_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_walk_usecases.dart';
import 'package:dummy/features/dailycare/presentation/bloc/meal_form/meal_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/bloc/walk_form/walk_form_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/add/add_walk_form.dart';
import 'package:dummy/features/dashboard/data/datasources/dashboard_details_datasource.dart';
import 'package:dummy/features/dashboard/data/datasources/dashboard_details_datasource_impl.dart';
import 'package:dummy/features/dashboard/data/repositories/dashboard_details_repository_impl.dart';
import 'package:dummy/features/dashboard/domain/repositories/dashboard_details_repository.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource_impl.dart';
import 'package:dummy/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';
import 'package:dummy/features/profile/domain/usecases/documents_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/event_fields_usecases.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:dummy/features/signup/domain/usecases/create_pet_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/pet_image_usecases.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/data/datasources/auth_datasource.dart';
import '../features/auth/data/datasources/auth_datasource_impl.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecases/current_user_usecases.dart';
import '../features/auth/domain/usecases/login_usecases.dart';
import '../features/auth/domain/usecases/logout_usecases.dart';
import '../features/auth/domain/usecases/register_account_usecases.dart';
import '../features/dashboard/domain/usecases/dashboard_details_usecases.dart';
import '../features/signup/data/datasources/signup_datasource.dart';
import '../features/signup/data/datasources/signup_datasource_impl.dart';
import '../features/signup/data/repositories/signup_repository_impl.dart';
import '../features/signup/domain/repositories/signup_repository.dart';
import '../features/signup/domain/usecases/cat_breed_usecases.dart';
import '../features/signup/domain/usecases/dog_breed_usecases.dart';
import '../features/signup/domain/usecases/personality_tag_usecases.dart';
import '../features/signup/presentation/bloc/register/register_bloc.dart';

part 'injection_util.dart';
part 'injection_bloc.dart';
part 'injection_navigation_services.dart';
part 'injection_system_settings.dart';
part 'injection_auth.dart';
part 'injection_singup.dart';
part 'injection_profile.dart';
part 'injection_dashboard.dart';
part 'injection_daily_care.dart';

final GetIt getIt = GetIt.instance;

class Injection {
  static Future<void> init() async {
    await _initServicesAndUtils();
    await _initSystemSettings();
    await __authDependencies();
    await __signupDependencies();
    await __profileDependencies();
    await __dashboardDependencies();
    await __dailyCareDependencies();
  }
}
