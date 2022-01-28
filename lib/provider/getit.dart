import 'package:get_it/get_it.dart';
import 'package:meditation_app/service/navigation_service.dart';
import 'package:meditation_app/view/home_screen_view_model.dart';
import 'package:meditation_app/view/splash_screen_view_model.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => SplashScreenViewModel());
  getIt.registerFactory(() => HomeScreenViewModel());
}
