import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get fillWhiteATL30 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
              30.h,
            ),
          ),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToIndigoDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(26.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.primary,
            appTheme.indigo50001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToIndigoTL16Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.primary,
            appTheme.indigo50001,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        side: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get outlinePrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
        shadowColor: theme.colorScheme.primaryContainer,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
