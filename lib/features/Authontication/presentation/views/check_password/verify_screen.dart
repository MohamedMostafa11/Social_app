import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:social_app/core/utils/app_functions.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/forgot_password.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/setpassword.dart';
import 'package:social_app/widgets/custom_elevated_button.dart';
import 'package:social_app/widgets/custom_pin_code_text_field.dart';

// ignore: must_be_immutable
class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);

  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 768.v,
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
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 22.v),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL24),
                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("VERIFICATION",
                                          style: CustomTextStyles
                                              .titleMediumPrimary),
                                      SizedBox(height: 14.v),
                                      _buildFrame(context),
                                      SizedBox(height: 30.v),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.h),
                                          child: CustomPinCodeTextField(
                                            context: context,
                                            onChanged: (value) {},
                                            controller: pinCodeController,
                                          )),
                                      SizedBox(height: 30.v),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtDonTReceiveThe(context);
                                          },
                                          child: Text(
                                              "Don't receive the code ?"
                                                  .toUpperCase(),
                                              style: CustomTextStyles
                                                  .bodyMediumGray90002_1)),
                                      SizedBox(height: 25.v),
                                      CustomElevatedButton(
                                          text: "VERIFY",
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 14.h),
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientPrimaryToIndigoDecoration,
                                          onPressed: () {
                                            onTapVERIFY(context);
                                          }),
                                      SizedBox(height: 50.v),
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup7030,
                                              height: 90.v,
                                              width: 224.h)),
                                      SizedBox(height: 20.v)
                                    ]),
                              )))),
                ]))));
  }

  Widget _buildFourPhoto(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: double.maxFinite,
        height: 270.v,
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
              height: 120.v,
              margin: EdgeInsets.only(bottom: 12.v)),
          CustomImageView(
              alignment: Alignment.bottomRight,
              imagePath: ImageConstant.imgG6y5mm9zby0,
              width: 188.h,
              height: 120.v,
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

  onTapTxtDonTReceiveThe(BuildContext context) {
    Navigation(context: context, next: forgotPasswordScreen());
  }

  onTapVERIFY(BuildContext context) {
    Navigation(context: context, next: setNewPasswordScreen());
    // NavigationWithReplace(context: context, next: setNewPasswordScreen());  Don't neeeeeed work
  }
}

Widget _buildFrame(BuildContext context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
      decoration: AppDecoration.fillGray100
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: SizedBox(
          width: 281.h,
          child: Text(
              "A message with verification code was sent to your mobile phone.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50))));
}
