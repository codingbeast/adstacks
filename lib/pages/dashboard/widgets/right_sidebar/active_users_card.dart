import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class ActiveUsersCard extends StatelessWidget {
  const ActiveUsersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allMedium,
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.05),
        borderRadius: AppMetrics.boxRadiusMedium,
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: AppColors.success,
                  shape: BoxShape.circle,
                ),
              ),
              AppMetrics.spaceSmall,
              Text('Live Active Users', style: AppTextStyles.bodyMedium),
            ],
          ),
          AppMetrics.spaceSmall,
          Text('1,482', style: AppTextStyles.heading1.copyWith(color: AppColors.primary)),
          AppMetrics.spaceTiny,
          Row(
            children: [
              const Icon(Icons.trending_up, color: AppColors.success, size: AppMetrics.iconSmall),
              AppMetrics.spaceTiny,
              Text('+12% since last hour', style: AppTextStyles.bodySmall.copyWith(color: AppColors.success)),
            ],
          ),
        ],
      ),
    );
  }
}
