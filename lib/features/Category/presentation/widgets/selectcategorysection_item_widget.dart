import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';

// ignore: must_be_immutable
class SelectcategorysectionItemWidget extends StatelessWidget {
  const SelectcategorysectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: 153.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWxm465om4j4,
            height: 180.v,
            width: 153.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                height: 180.v,
                width: 153.h,
                decoration: AppDecoration.gradientGrayToGray90003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                        imagePath: ImageConstant.img270591180x153,
                        height: 180.v,
                        width: 153.h,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 19.v),
                        child: Text(
                          "Photographer",
                          style: CustomTextStyles.titleMediumWhiteA700_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
