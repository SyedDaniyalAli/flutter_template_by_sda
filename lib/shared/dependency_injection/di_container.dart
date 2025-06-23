import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';

import '../../core/network_handling/dio_client.dart';

final getItInstance = GetIt.instance;

class DependencyInjection {
  static void init() {
    initializeDependencies();
  }
}

void initializeDependencies() {
  _initializeRepositories();
  _initializeUseCases();
  _initializeExternalPackages();
}

void _initializeRepositories() {
  // getItInstance.registerLazySingleton<AuthRepoImpl>(
  //   () => AuthRepoImpl(),
  // );
}

void _initializeUseCases() {}

void _initializeExternalPackages() {
  //local storage
  // const storage = FlutterSecureStorage();
  // getItInstance.registerLazySingleton(() => storage);

  // final localStorage = LocalStorage();
  // getItInstance.registerLazySingleton(() => localStorage);

  // getItInstance.registerLazySingleton<NetworkInfo>(
  //   () => NetworkInfoImpl(
  //     networkConnectionCheck: getItInstance(),
  //   ),
  // );

  // getItInstance.registerLazySingleton(() => Connectivity());

  // Register DioClient as a singleton
  getItInstance.registerLazySingleton<DioClient>(() => DioClient());
}
