import 'package:book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));

}