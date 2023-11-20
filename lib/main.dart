import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app/app.dart';
import 'package:social_app/theme/theme_helper.dart';
<<<<<<< HEAD
//kmklmmk;;m
=======
import 'package:social_app/routes/app_routes.dart';

//sadasdcas
//sdacsach
>>>>>>> f9cf4d10cb956378b77af39d1b3fda797bd7f59c
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




