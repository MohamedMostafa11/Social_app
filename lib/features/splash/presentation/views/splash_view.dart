import 'package:flutter/material.dart';
import 'package:social_app/core/utils/app_functions.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(
        //       Assets.assetsImagesImg270591180x153,
        //     ),
        //   ),
        // ),

        child: ElevatedButton(
          onPressed: () {
            navagation(
              context: context,
              path: "/onBoardingView",
            );
          },
          child: Text('nav'),
        ),
      ),
    );
  }
}
