import 'package:flutter/material.dart';
import '../../../../Authontication/presentation/views/SignIn.dart';
import '../../../../../core/app_export.dart';
import '../../../../../core/utils/app_functions.dart';
import '../../../../../widgets/custom_elevated_button.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.gray90003.withOpacity(0.1),
                          appTheme.gray90003.withOpacity(0.7)
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplash),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 15.h, top: 70.v, right: 15.h),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFilter,
                          height: 33.v,
                          width: 99.h),
                      SizedBox(height: 32.v),
                      SizedBox(
                          height: 422.v,
                          width: 343.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle1967,
                                    height: 141.adaptSize,
                                    width: 141.adaptSize,
                                    radius: BorderRadius.circular(8.h),
                                    alignment: Alignment.bottomCenter)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle1967,
                                height: 141.adaptSize,
                                width: 141.adaptSize,
                                radius: BorderRadius.circular(8.h),
                                alignment: Alignment.topCenter),
                            CustomImageView(
                                imagePath: ImageConstant.imgUmfpfokxivg187x187,
                                height: 187.adaptSize,
                                width: 187.adaptSize,
                                radius: BorderRadius.circular(10.h),
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 15.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgCc4vwya1s8u,
                                height: 187.adaptSize,
                                width: 187.adaptSize,
                                radius: BorderRadius.circular(10.h),
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 15.v)),
                            CustomImageView(
                                imagePath: ImageConstant.img32553071,
                                height: 163.adaptSize,
                                width: 163.adaptSize,
                                radius: BorderRadius.circular(10.h),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgPexelsJonathanBorba3052727,
                                height: 163.v,
                                width: 162.h,
                                radius: BorderRadius.circular(10.h),
                                alignment: Alignment.centerRight)
                          ])),
                      SizedBox(height: 32.v),
                      Text("SHARE - INSPIRE - CONNECT".toUpperCase(),
                          style: CustomTextStyles.bodyMediumWhiteA700_1),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          width: 162.h,
                          text: "GET STARTED",
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          onPressed: () {
                            //navigation(context: context, path: "/SignIn");
                            Navigation(context: context, next: SignIn());
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }
}
