import 'package:go_router/go_router.dart';
import '../features/splash/presentation/views/boarding_screen/boarding_screen.dart';
import '../features/splash/presentation/views/splash_screen/splash_screen.dart';
import '../features/Authontication/presentation/views/SignIn.dart';


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
      builder: (context, state) => SignIn(),
    ),
  ]); 
}
