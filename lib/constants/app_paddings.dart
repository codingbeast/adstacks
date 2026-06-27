import 'package:flutter/material.dart';
import 'app_metrics.dart';

class AppPaddings {
  AppPaddings._();

  // All sides padding
  static const EdgeInsets allTiny = EdgeInsets.all(AppMetrics.paddingTiny);
  static const EdgeInsets allSmall = EdgeInsets.all(AppMetrics.paddingSmall);
  static const EdgeInsets allMedium = EdgeInsets.all(AppMetrics.paddingMedium);
  static const EdgeInsets allLarge = EdgeInsets.all(AppMetrics.paddingLarge);
  static const EdgeInsets allExtraLarge = EdgeInsets.all(AppMetrics.paddingExtraLarge);

  // Horizontal padding
  static const EdgeInsets horizontalSmall = EdgeInsets.symmetric(horizontal: AppMetrics.paddingSmall);
  static const EdgeInsets horizontalMedium = EdgeInsets.symmetric(horizontal: AppMetrics.paddingMedium);
  static const EdgeInsets horizontalLarge = EdgeInsets.symmetric(horizontal: AppMetrics.paddingLarge);

  // Vertical padding
  static const EdgeInsets verticalSmall = EdgeInsets.symmetric(vertical: AppMetrics.paddingSmall);
  static const EdgeInsets verticalMedium = EdgeInsets.symmetric(vertical: AppMetrics.paddingMedium);
  static const EdgeInsets verticalLarge = EdgeInsets.symmetric(vertical: AppMetrics.paddingLarge);

  // Symmetric combinations
  static const EdgeInsets horizontalMediumVerticalSmall = EdgeInsets.symmetric(
    horizontal: AppMetrics.paddingMedium,
    vertical: AppMetrics.paddingSmall,
  );
  static const EdgeInsets horizontalLargeVerticalMedium = EdgeInsets.symmetric(
    horizontal: AppMetrics.paddingLarge,
    vertical: AppMetrics.paddingMedium,
  );

  // Custom directional paddings (e.g., top only, bottom only)
  static const EdgeInsets topMedium = EdgeInsets.only(top: AppMetrics.paddingMedium);
  static const EdgeInsets bottomMedium = EdgeInsets.only(bottom: AppMetrics.paddingMedium);
  static const EdgeInsets leftMedium = EdgeInsets.only(left: AppMetrics.paddingMedium);
  static const EdgeInsets rightMedium = EdgeInsets.only(right: AppMetrics.paddingMedium);
}
