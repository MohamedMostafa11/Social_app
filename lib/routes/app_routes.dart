import 'package:go_router/go_router.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/forgot_password.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/setnewpassword.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/verify_screen.dart';
import 'package:social_app/features/Authontication/presentation/views/sign_in_screen/sign_in_screen.dart';
import 'package:social_app/features/Authontication/presentation/views/sign_up_screen/sign_up_screen.dart';
import 'package:social_app/features/Category/presentation/view/MyBottomNavigation.dart';
import 'package:social_app/features/Category/presentation/view/select_category_screen.dart';
import '../features/splash/presentation/views/boarding_screen/boarding_screen.dart';
import '../features/splash/presentation/views/splash_screen/splash_screen.dart';

class AppRoutes {
  final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyBottomNavigation(),
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
    GoRoute(
      path: '/Verify',
      builder: (context, state) => VerifyScreen(),
    ),
    GoRoute(
      path: '/SetNewPassword',
      builder: (context, state) => setNewPasswordScreen(),
    ),
    GoRoute(
      path: '/ForgetPassword',
      builder: (context, state) => forgotPasswordScreen(),
    ),
    GoRoute(
      path: '/SelectCategoryScreen',
      builder: (context, state) => SelectCategoryScreen(),
    ),
  ]);
}
