import 'package:go_router/go_router.dart';
import 'package:social_app/features/Authontication/presentation/views/sign_in_screen/sign_in_screen.dart';
import 'package:social_app/features/Authontication/presentation/views/sign_up_screen/sign_up_screen.dart';
import '../features/splash/presentation/views/boarding_screen/boarding_screen.dart';
import '../features/splash/presentation/views/splash_screen/splash_screen.dart';

class AppRoutes {
  final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/OnboardingView',
      builder: (context, state) => BoardingScreen(),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => SignUpScreen(),
    ),
  ]);
}
