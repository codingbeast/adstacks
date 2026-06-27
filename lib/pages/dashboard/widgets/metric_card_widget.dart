import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class MetricCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final String percentage;
  final bool isPositive;
  final IconData icon;
  final Color color;

  const MetricCardWidget({
    super.key,
    required this.title,
    required this.value,
    required this.percentage,
    required this.isPositive,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allLarge,
      decoration: AppDecorations.cardSubtle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.bodyMedium),
              Container(
                padding: AppPaddings.allSmall,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: AppMetrics.boxRadiusSmall,
                ),
                child: Icon(icon, color: color, size: AppMetrics.iconMedium),
              ),
            ],
          ),
          AppMetrics.spaceMedium,
          Text(value, style: AppTextStyles.heading1),
          AppMetrics.spaceSmall,
          Row(
            children: [
              Icon(
                isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                color: isPositive ? AppColors.success : AppColors.error,
                size: AppMetrics.iconSmall,
              ),
              AppMetrics.spaceTiny,
              Text(
                percentage,
                style: AppTextStyles.bodySmall.copyWith(
                  color: isPositive ? AppColors.success : AppColors.error,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppMetrics.spaceSmall,
              Text('vs last month', style: AppTextStyles.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
