import 'package:get_it/get_it.dart';
import 'package:practica_bloc/config/config.dart';
import 'package:practica_bloc/presentation/blocs/blocs.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator
      .registerLazySingleton<NavigationHandler>(() => MainNavigationHandler());
  locator.registerLazySingleton<UsernameCubit>(() => UsernameCubit());
  locator.registerLazySingleton<AppThemeCubit>(() => AppThemeCubit());
}
 