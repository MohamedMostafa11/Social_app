import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
  ]);
}
