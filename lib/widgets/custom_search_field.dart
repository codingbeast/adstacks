import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomSearchField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  const CustomSearchField({
    super.key,
    this.hintText = 'Search',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.6)),
        suffixIcon: Icon(Icons.search, color: Colors.white.withValues(alpha: 0.6), size: 20),
        filled: true,
        fillColor: AppColors.textPrimary, // Rich dark background color
        isDense: true, // Reduces internal height
        border: OutlineInputBorder(
          borderRadius: AppMetrics.boxRadiusCircular,
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Slim vertical padding for reduced height
      ),
    );
  }
}
