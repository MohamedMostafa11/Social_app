import 'package:flutter/material.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/setnewpassword.dart';
import 'package:social_app/features/Authontication/presentation/views/check_password/verify_screen.dart';
import '../../../../../core/app_export.dart';
import '../../../../../core/utils/app_functions.dart';
import '../sign_in_screen/sign_in_screen.dart';
import '../../../../../widgets/custom_elevated_button.dart';
import '../../../../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class forgotPasswordScreen extends StatelessWidget {
  forgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                                      Text("TYPE YOUR EMAIL",
                                          style: CustomTextStyles
                                              .titleMediumPrimary),
                                      SizedBox(height: 14.v),
                                      _buildFrame(context),
                                      SizedBox(height: 35.v),
                                      CustomTextFormField(
                                          controller: emailController,
                                          hintText: "Email",
                                          width: 315.h,
                                          textInputType:
                                              TextInputType.emailAddress),
                                      SizedBox(height: 70.v),
                                      CustomElevatedButton(
                                          text: "SEND",
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 14.h),
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientPrimaryToIndigoDecoration,
                                          onPressed: () {
                                            onTapSEND(context);
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

  onTapSEND(BuildContext context) {
    Navigation(context: context, next: VerifyScreen());
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
              "We will send you instruction on \n how to reset your password",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50))));
}
