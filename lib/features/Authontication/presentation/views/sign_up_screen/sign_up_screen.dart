import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/core/utils/app_functions.dart';
import 'package:social_app/features/Authontication/presentation/views/sign_in_screen/sign_in_screen.dart';
import 'package:social_app/widgets/custom_elevated_button.dart';
import 'package:social_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      _buildFourPhoto(context),
                      Container(
                        height: mediaQueryData.size.height * 0.621,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(28),
                              topRight: Radius.circular(28)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4)
                          ],
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 40.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL28),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomTextFormField(
                                          controller: userController,
                                          hintText: "Username",
                                          textInputType: TextInputType.name),
                                      SizedBox(height: 20.v),
                                      CustomTextFormField(
                                          controller: emailController,
                                          hintText: "Email",
                                          textInputType:
                                              TextInputType.emailAddress),
                                      SizedBox(height: 20.v),
                                      CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "Password",
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          suffix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 13.v, 20.h, 13.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 50.v),
                                          obscureText: true,
                                          contentPadding: EdgeInsets.only(
                                              left: 20.h,
                                              top: 14.v,
                                              bottom: 14.v)),
                                      SizedBox(height: 40.v),
                                      CustomElevatedButton(
                                          text: "SIGN IN",
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientPrimaryToIndigoDecoration),
                                      SizedBox(height: 40.v),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxthaveaccount(context);
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Already have account? ",
                                                    style: CustomTextStyles
                                                        .bodyLargeErrorContainer_1),
                                                TextSpan(
                                                    text: "SIGN IN",
                                                    style: CustomTextStyles
                                                        .bodyLargeIndigo500)
                                              ]),
                                              textAlign: TextAlign.left)),
                                      SizedBox(height: 100.v)
                                    ]))),
                      )
                    ])))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxthaveaccount(BuildContext context) {
    Navigation(context: context, next: SignInScreen());
  }
}

Widget _buildFourPhoto(BuildContext context) {
  return Align(
    alignment: Alignment.topCenter,
    child: SizedBox(
      width: double.maxFinite,
      height: 312.v,
      child: Stack(alignment: Alignment.bottomRight, children: [
        CustomImageView(
          alignment: Alignment.topLeft,
          imagePath: ImageConstant.imgPexelsFreestocksorg818654,
          width: 187.h,
          height: 150.v,
        ),
        CustomImageView(
          alignment: Alignment.topRight,
          imagePath: ImageConstant.imgV9fqr4tbiq8,
          width: 188.h,
          height: 150.v,
        ),
        CustomImageView(
            alignment: Alignment.bottomLeft,
            imagePath: ImageConstant.imgMu3sigq5gpw,
            width: 187.h,
            height: 150.v,
            margin: EdgeInsets.only(bottom: 12.v)),
        CustomImageView(
            alignment: Alignment.bottomRight,
            imagePath: ImageConstant.imgG6y5mm9zby0,
            width: 188.h,
            height: 150.v,
            margin: EdgeInsets.only(bottom: 12.v)),
        Opacity(
            opacity: 0.5,
            child: CustomImageView(
                imagePath: ImageConstant.img270591,
                height: 310.v,
                width: 375.h,
                alignment: Alignment.center)),
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(
                left: 100.h, right: 100.h, top: 0.v, bottom: 80.v),
            child: CustomImageView(
              imagePath: ImageConstant.img6960,
              width: 73.h,
              height: 24.v,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(
                left: 100.h, right: 100.h, top: 70.v, bottom: 60.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgWelcome,
              width: 190.h,
              height: 26.v,
            ),
          ),
        )
      ]),
    ),
  );
}
