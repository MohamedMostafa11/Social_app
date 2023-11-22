import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'theme/theme_helper.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      title: 'social_app',
      debugShowCheckedModeBanner: false,
      routerConfig:AppRoutes(). router,
    
      
    );
  }
}
