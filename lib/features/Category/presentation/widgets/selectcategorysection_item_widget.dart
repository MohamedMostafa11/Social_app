import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/widgets/custom_image_view2.dart';

// ignore: must_be_immutable
class SelectcategorysectionItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  const SelectcategorysectionItemWidget(
      {Key? key, required this.imagePath, required this.title})
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
                    image: DecorationImage(image: AssetImage(imagePath))),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView2(
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
                          title,
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
