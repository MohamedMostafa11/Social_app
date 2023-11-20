import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app/app.dart';
import 'package:social_app/theme/theme_helper.dart';

 
import 'package:social_app/routes/app_routes.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');
  runApp(
    MyApp(),
  );
}
