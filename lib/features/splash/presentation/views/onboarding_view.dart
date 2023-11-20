import 'package:flutter/material.dart';
import 'package:social_app/core/utils/app_functions.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => navagation(context: context, path: "/"),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
