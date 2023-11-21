import 'package:go_router/go_router.dart';
import 'package:social_app/features/splash/presentation/views/onboarding_view.dart';
import 'package:social_app/features/splash/presentation/views/splash_view.dart';

 final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: "/onBoardingView",
        builder: (context, state) =>  OnboardingView(),
      ),
    ],
  );
