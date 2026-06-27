import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'layout/main_layout.dart';

/// Bootstrap entry point for the AdStacks Premium Dashboard application.
void main() {
  // Ensure Flutter binding is fully initialized before launching the app
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

/// Root widget of the application configuring the global Material 3 theme,
/// definitive design system color palettes, and adaptive master layout.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdStacks Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          surface: AppColors.background,
        ),
      ),
      // Launch into the responsive Master Layout containing sidebars and main content
      home: const MainLayout(),
    );
  }
}
