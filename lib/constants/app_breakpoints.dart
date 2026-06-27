import 'package:flutter/material.dart';

class AppBreakpoints {
  AppBreakpoints._();

  // Material 3 Canonical Breakpoint Widths adapted for 3-Column Premium Dashboard
  static const double mobileMax = 768;
  static const double tabletMax = 1280;

  // Helper Methods for quick condition checks
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileMax;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileMax &&
      MediaQuery.of(context).size.width < tabletMax;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletMax;
}
