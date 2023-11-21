import 'package:flutter/material.dart';
import '../../../../../core/utils/app_functions.dart';
import '../boarding_screen/boarding_screen.dart';
import '../../../../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        // Navigate to the next screen when tapped
        //navigation(context: context, path: "/OnboardingView");
        //GoRouter.of(context).push("/OnboardingView",);
        //Navigator.push(context,MaterialPageRoute(builder: (context) => BoardingScreen(),));
        Navigation(context: context, next: BoardingScreen());
      },
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: appTheme.indigo500.withOpacity(0.4),
          body: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            decoration: BoxDecoration(
              color: appTheme.indigo500.withOpacity(0.4),
              gradient: LinearGradient(
                begin: Alignment(0.5, 1),
                end: Alignment(0.5, 0),
                colors: [
                  appTheme.indigo50001,
                  theme.colorScheme.primary,
                ],
              ),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSplash,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 15.h,
                top: 121.v,
                right: 15.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFilter,
                    height: 33.v,
                    width: 99.h,
                  ),
                  SizedBox(height: 40.v),
                  SizedBox(
                    height: 422.v,
                    width: 343.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle1967,
                            height: 141.adaptSize,
                            width: 141.adaptSize,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1967,
                          height: 141.adaptSize,
                          width: 141.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUmfpfokxivg,
                          height: 187.adaptSize,
                          width: 187.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 15.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCc4vwya1s8u,
                          height: 187.adaptSize,
                          width: 187.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 15.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img32553071,
                          height: 163.adaptSize,
                          width: 163.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgPexelsJonathanBorba3052727,
                          height: 163.v,
                          width: 162.h,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
