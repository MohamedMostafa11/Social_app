import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstant.imgPexelsFreestocksorg818654,
              width: 210,
              height: 160,
              fit: BoxFit.cover,
            ),
            Image.asset(
              ImageConstant.imgWxm465om4j42, // Replace with your image path
              width: 210,
              height: 160,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstant.imgMu3sigq5gpw, // Replace with your image path
              width: 210,
              height: 160,
              fit: BoxFit.cover,
            ),
            Image.asset(
              ImageConstant.imgG6y5mm9zby0, // Replace with your image path
              width: 210,
              height: 160,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}
