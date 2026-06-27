import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class TopRatingProjectCard extends StatelessWidget {
  const TopRatingProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryVariant],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: AppMetrics.boxRadiusLarge,
        boxShadow: AppDecorations.shadowMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Subtitle
          Text(
            'ETHEREUM 2.0',
            style: AppTextStyles.bodyMedium.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          AppMetrics.spaceSmall,

          // Title
          Text(
            'Top Rating Project',
            style: AppTextStyles.heading1.copyWith(color: Colors.white),
          ),
          AppMetrics.spaceMedium,

          // Description
          Text(
            'Trending project and high rating Project Created by Team.',
            style: AppTextStyles.bodyLarge.copyWith(color: Colors.white),
          ),
          AppMetrics.spaceLarge,

          // Call to action button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.textPrimary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: AppMetrics.boxRadiusMedium,
              ),
              elevation: 0,
            ),
            onPressed: () {},
            child: const Text('Learn More', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
