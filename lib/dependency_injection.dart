import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());
  const flutterSecureStorage = FlutterSecureStorage();
  final prefs = await SharedPreferences.getInstance();

  locator.registerSingleton<Dio>(dio);
  locator.registerSingleton<FlutterSecureStorage>(flutterSecureStorage);
  locator.registerSingleton<SharedPreferences>(prefs);
}

Future<void> initializeBlocDependencies() async {
  
}