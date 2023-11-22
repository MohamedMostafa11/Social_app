import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/widgets/custom_text_form_field.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Column(
            children: [
              buildFour(context),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  decoration: BoxDecoration(
                      color: null,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(28))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          hintText: "Email",
                          controller: email_controller,
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          hintText: "Password",
                          controller: password_controller,
                          textInputType: TextInputType.visiblePassword,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildFour(BuildContext context) {
  return SizedBox(
    width: double.maxFinite,
    child: Container(
      foregroundDecoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageConstant.img270591,
              ),
              fit: BoxFit.cover)),
      child: Column(children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPexelsFreestocksorg818654,
              width: 187.5.h,
              height: 150.v,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgG6y5mm9zby0,
              width: 187.5.h,
              height: 150.v,
            ),
          ],
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgV9fqr4tbiq8,
              width: 187.5.h,
              height: 150.v,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMu3sigq5gpw,
              width: 187.5.h,
              height: 150.v,
            ),
          ],
        )
      ]),
    ),
  );
}
