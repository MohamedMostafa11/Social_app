import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/core/utils/image_constant.dart';
import 'package:social_app/features/Category/presentation/view/add_screen/add_screen.dart';
import 'package:social_app/features/Category/presentation/view/home_screen/home_screen.dart';
import 'package:social_app/features/Category/presentation/view/notification_screen/Notification_screen.dart';
import 'package:social_app/features/Category/presentation/view/profile_screen/profile_screen.dart';
import 'package:social_app/features/Category/presentation/view/search_screen/search_screen.dart';

// ignore: must_be_immutable
class NavigationbarrWidget extends StatelessWidget {
  int _currentIndex = 0;
  final List<Widget> pagesName = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    NoteificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 105,
        child: Stack(children: <Widget>[
          Positioned(
              top: 46,
              left: 25,
              child: Image.asset(
                ImageConstant.imgIconlyLightHome,
                width: 24,
                height: 24,
              )),
          Positioned(
              top: 46,
              left: 100,
              child: Image.asset(
                ImageConstant.imgIconlyBoldCategory,
                width: 24,
                height: 24,
              )),
          Center(
            child: Positioned(
                top: 46,
                child: Image.asset(
                  ImageConstant.imgIconlyLightPlus,
                  width: 46,
                  height: 46,
                )),
          ),
          Positioned(
              top: 46,
              right: 100,
              child: Image.asset(
                ImageConstant.imgNotification20x17,
                width: 24,
                height: 24,
              )),
          Positioned(
              top: 46,
              right: 25,
              child: Image.asset(
                ImageConstant.imgIconlyLightProfile,
                width: 24,
                height: 24,
              )),
        ]));
  }
}
