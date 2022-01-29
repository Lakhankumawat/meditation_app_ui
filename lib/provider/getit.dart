import 'package:get_it/get_it.dart';
import 'package:meditation_app/service/navigation_service.dart';
import 'package:meditation_app/view/discover_screen_view_model.dart';
import 'package:meditation_app/view/home_screen_view_model.dart';
import 'package:meditation_app/view/player_screen_view_model.dart';
import 'package:meditation_app/view/premium_screen_view_model.dart';
import 'package:meditation_app/view/profile_screen_view_model.dart';
import 'package:meditation_app/view/splash_screen_view_model.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => SplashScreenViewModel());
  getIt.registerFactory(() => HomeScreenViewModel());
  getIt.registerFactory(() => DiscoverScreenViewModel());
  getIt.registerFactory(() => PlayerScreenViewModel());
  getIt.registerFactory(() => PremiumScreenViewModel());
  getIt.registerFactory(() => ProfileScreenViewModel());
}
