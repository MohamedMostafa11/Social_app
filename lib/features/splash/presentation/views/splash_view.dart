import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/utils/app_functions.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              navagation(context: context, path: "/OnboardingView"),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
