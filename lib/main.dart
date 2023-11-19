import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app/theme/theme_helper.dart';
import 'package:social_app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');
  runApp(SoicalApp());
}

class SoicalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes().router,
      theme: theme,
      title: 'social_app',
      debugShowCheckedModeBanner: false,
    );
  }
}
