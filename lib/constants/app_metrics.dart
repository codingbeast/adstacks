import 'package:flutter/material.dart';

class AppMetrics {
  AppMetrics._();

  // Padding & Margin Dimensions
  static const double paddingTiny = 4.0;
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingExtraLarge = 32.0;

  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusCircular = 100.0;

  static final BorderRadius boxRadiusSmall = BorderRadius.circular(radiusSmall);
  static final BorderRadius boxRadiusMedium = BorderRadius.circular(radiusMedium);
  static final BorderRadius boxRadiusLarge = BorderRadius.circular(radiusLarge);
  static final BorderRadius boxRadiusCircular = BorderRadius.circular(radiusCircular);

  // Icon Sizes
  static const double iconSmall = 16.0;
  static const double iconMedium = 24.0;
  static const double iconLarge = 32.0;

  // Spacing Widgets (SizedBox)
  static const SizedBox spaceTiny = SizedBox(width: paddingTiny, height: paddingTiny);
  static const SizedBox spaceSmall = SizedBox(width: paddingSmall, height: paddingSmall);
  static const SizedBox spaceMedium = SizedBox(width: paddingMedium, height: paddingMedium);
  static const SizedBox spaceLarge = SizedBox(width: paddingLarge, height: paddingLarge);
}
