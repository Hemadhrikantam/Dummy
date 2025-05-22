import 'package:dio/dio.dart';
import 'package:dummy/core/services/http_service_impl.dart';
import 'package:dummy/core/services/local_storage_impl.dart';
import 'package:dummy/core/services/navigation_service.dart';
import 'package:dummy/core/utils/custom_interceptors.dart';
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
import '../features/auth/presentation/bloc/auth/auth_bloc.dart';

part 'injection_util.dart';
part 'injection_navigation_services.dart';
part 'injection_system_settings.dart';
part 'injection_auth.dart';
part 'injection_bloc.dart';

final GetIt getIt = GetIt.instance;

class Injection {
  static Future<void> init() async {
    await _initServicesAndUtils();
    await _initSystemSettings();
    await __authDependencies();
  }
}
