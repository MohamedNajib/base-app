import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/app_cubit.dart';
import '../presentation/landingSection/block/landing_cubit.dart';
import 'app_prefs.dart';
import 'converter/input_converter.dart';
import 'network/network_info.dart';

//final instance = GetIt.instance;
final GetIt instance = GetIt.I..allowReassignment = true;
Future<void> init() async {
  /// Features ->
  instance.registerFactory<AppCubit>(
    () => AppCubit(appPreferences: instance<AppPreferences>()),
  );
  instance.registerFactory<LandingCubit>(
    // () => LandingCubit(),
    () => LandingCubit(),
  );

  /// Use cases
  //instance.registerLazySingleton<MenuItemsUseCase>(() => MenuItemsUseCase(repository: instance<Repository>()));

  /// Repository
  // instance.registerLazySingleton<Repository>(
  //   () => RepositoryImplementation(
  //     remoteDataSource: instance<RemoteDataSource>(),
  //     localDataSource: instance<LocalDataSource>(),
  //     staticDataSource: instance<StaticDataSource>(),
  //     networkInfo: !kIsWeb ? instance<NetworkInfo>() : null,
  //   ),
  // );

  /// Data
  //instance.registerLazySingleton<StaticData>(() => StaticData());

  /// Data sources
  // instance.registerLazySingleton<RemoteDataSource>(
  //   () => RemoteDataSourceImplementation(),
  // );

  // instance.registerLazySingleton<LocalDataSource>(
  //   () => LocalDataSourceImplementation(),
  // );
  //
  // instance.registerLazySingleton<StaticDataSource>(
  //   () => StaticDataSourceImplementation(staticData: instance<StaticData>()),
  // );

  /// Core
  instance.registerLazySingleton<InputConverter>(
    () => InputConverter(),
  );

  if (!kIsWeb) {
    // network info
    instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementation(connectionChecker: instance<InternetConnectionChecker>()),
    );
    instance.registerFactory<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );
  }

  /// External
  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(
    () => sharedPrefs,
  );

  // app prefs instance
  instance.registerLazySingleton<AppPreferences>(
    () => AppPreferences(instance<SharedPreferences>()),
  );
}
