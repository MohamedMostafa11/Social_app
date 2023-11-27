import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/core/utils/app_functions.dart';
import 'package:social_app/features/Category/presentation/CardModel.dart';
import 'package:social_app/features/Category/presentation/view/MyBottomNavigation.dart';
import 'package:social_app/features/Category/presentation/widgets/selectcategorysection_item_widget.dart';
import 'package:social_app/features/splash/presentation/views/boarding_screen/boarding_screen.dart';
import 'package:social_app/widgets/custom_elevated_button.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFilterSection(context),
                  SizedBox(height: 20.v),
                  Text("Who are you?",
                      style: CustomTextStyles.titleLargeGray90002),
                  SizedBox(height: 36.v),
                  _buildSelectCategorySection(context),
                  SizedBox(height: 40.v),
                  Text("SHARE - INSPIRE - CONNECT".toUpperCase(),
                      style: CustomTextStyles.bodyMediumPrimary_3),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildButtonBarSection(context)));
  }

  Widget _buildFilterSection(BuildContext context) {
    return SizedBox(
        height: 150.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 155.v,
              width: 375.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.img6960,
              height: 27.v,
              width: 80.h,
              alignment: Alignment.center)
        ]));
  }

  Widget _buildSelectCategorySection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 181.v,
                crossAxisCount: 2,
                mainAxisSpacing: 19.h,
                crossAxisSpacing: 19.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return SelectcategorysectionItemWidget(
                  imagePath: cards[index].imagepath, title: cards[index].title);
            }));
  }

  Widget _buildButtonBarSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 44.v),
        decoration: AppDecoration.white,
        child: CustomElevatedButton(
            text: "EXPLORE NOW",
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToIndigoDecoration,
            onPressed: () {
              onTapEXPLORENOW(context);
            }));
  }

  onTapEXPLORENOW(BuildContext context) {
    Navigation(context: context, next: MyBottomNavigation());
  }
}
