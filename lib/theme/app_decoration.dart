import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue400,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal900,
      );

  static BoxDecoration get outlineGray300 => BoxDecoration(
    border: Border.all(
      color: appTheme.gray300,
      width: 1.h,
    ),
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray30001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray300011 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder64 => BorderRadius.circular(
        64.h,
      );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
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
