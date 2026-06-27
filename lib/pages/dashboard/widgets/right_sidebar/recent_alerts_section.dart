import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class RecentAlertsSection extends StatelessWidget {
  const RecentAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Alerts', style: AppTextStyles.heading3),
        AppMetrics.spaceMedium,
        _buildAlertItem(Icons.trending_up, 'Server load optimal', '10m ago', AppColors.success),
        _buildAlertItem(Icons.warning_amber, 'Ad budget 90% used', '1h ago', AppColors.warning),
        _buildAlertItem(Icons.check_circle_outline, 'Campaign review passed', '3h ago', AppColors.info),
      ],
    );
  }

  Widget _buildAlertItem(IconData icon, String text, String time, Color color) {
    return Padding(
      padding: AppPaddings.verticalSmall,
      child: Row(
        children: [
          Container(
            padding: AppPaddings.allSmall,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: AppMetrics.boxRadiusSmall,
            ),
            child: Icon(icon, color: color, size: AppMetrics.iconSmall),
          ),
          AppMetrics.spaceSmall,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textPrimary)),
                Text(time, style: AppTextStyles.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
