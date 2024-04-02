import 'package:flutter/material.dart';
import 'package:spives/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGrayDd => BoxDecoration(
        color: appTheme.gray100Dd,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientOnSecondaryContainerToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.86),
          colors: [
            theme.colorScheme.onSecondaryContainer,
            theme.colorScheme.onPrimaryContainer,
            appTheme.black900.withOpacity(0.87),
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL61 => BorderRadius.only(
        bottomLeft: Radius.circular(61.h),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
