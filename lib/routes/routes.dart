import 'package:flutter/cupertino.dart';
import 'package:meditation_app/src/screens/home_screen/home_screen.dart';
import 'package:meditation_app/src/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
