import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_metrics.dart';

class AppDecorations {
  AppDecorations._();

  // Box Shadows
  static final List<BoxShadow> shadowSubtle = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];

  static final List<BoxShadow> shadowMedium = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 16,
      offset: const Offset(0, 6),
    ),
  ];

  // Card & Container Decorations
  static final BoxDecoration cardSubtle = BoxDecoration(
    color: AppColors.surface,
    borderRadius: AppMetrics.boxRadiusMedium,
    boxShadow: shadowSubtle,
  );

  static final BoxDecoration cardElevated = BoxDecoration(
    color: AppColors.surface,
    borderRadius: AppMetrics.boxRadiusLarge,
    boxShadow: shadowMedium,
  );

  static final BoxDecoration cardBordered = BoxDecoration(
    color: AppColors.surface,
    borderRadius: AppMetrics.boxRadiusMedium,
    border: Border.all(color: AppColors.textDisabled.withValues(alpha: 0.2)),
  );
}
