import 'package:app/core/utils/api_service.dart';
import 'package:app/features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServicLocat() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<AuthRepo>(AuthRepo(getIt.get<ApiService>()));
}

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
