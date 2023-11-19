import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'package:social_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 36.v,
          width: 73.h,
          text: "Follow",
          buttonStyle: CustomButtonStyles.fillWhiteA,
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary_2,
        ),
      ),
    );
  }
}
