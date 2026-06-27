import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class TopAdCard extends StatelessWidget {
  const TopAdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allMedium,
      decoration: AppDecorations.cardBordered,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Summer Sale Ad', style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
              const Icon(Icons.star, color: AppColors.warning, size: AppMetrics.iconSmall),
            ],
          ),
          AppMetrics.spaceSmall,
          LinearProgressIndicator(
            value: 0.85,
            backgroundColor: AppColors.textDisabled.withValues(alpha: 0.2),
            color: AppColors.success,
            minHeight: 8,
            borderRadius: AppMetrics.boxRadiusSmall,
          ),
          AppMetrics.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('CTR: 5.4%', style: AppTextStyles.bodySmall),
              Text('Goal: 85%', style: AppTextStyles.bodySmall.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
