import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/utils/size_utils.dart';
import 'package:rajat_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeff222222 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF222222),
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProOnPrimary =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumff222222 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF222222),
        fontSize: 15.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displaySmallOnError => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 36.fSize,
      );
  // Title text style
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNeueKabelff222222 =>
      theme.textTheme.titleLarge!.neueKabel.copyWith(
        color: Color(0XFF222222),
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeSFProText =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSFProTextOnPrimaryContainer =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 20.fSize,
      );
  static get titleLargeSFProTextff222222 =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: Color(0XFF222222),
      );
  static get titleLargeff222222 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF222222),
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff222222 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF222222),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get neueKabel {
    return copyWith(
      fontFamily: 'Neue Kabel',
    );
  }
}
