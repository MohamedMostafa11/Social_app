import 'package:flutter/material.dart';
import 'package:social_app/presentation/splach_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
  };
}
