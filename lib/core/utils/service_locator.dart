import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repo/HomerepoImpl.dart';
import 'package:bookly_app/features/search/data/repo/searchrepoimpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocator() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit.registerSingleton<Homerepoimpl>(Homerepoimpl(getit.get<ApiService>()));
  getit.registerSingleton<Searchrepoimpl>(
    Searchrepoimpl(getit.get<ApiService>()),
  );
}
