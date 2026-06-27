import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class QuickActionCard extends StatelessWidget {
  const QuickActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allMedium,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primary.withValues(alpha: 0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: AppMetrics.boxRadiusMedium,
        boxShadow: AppDecorations.shadowSubtle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Boost Your Reach', style: AppTextStyles.heading3.copyWith(color: Colors.white)),
          AppMetrics.spaceSmall,
          Text(
            'Upgrade your daily ad budget to unlock AI-powered audience retargeting.',
            style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.9)),
          ),
          AppMetrics.spaceMedium,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(borderRadius: AppMetrics.boxRadiusSmall),
              padding: AppPaddings.horizontalMedium,
            ),
            onPressed: () {},
            child: const Text('Upgrade Budget'),
          ),
        ],
      ),
    );
  }
}
