import 'package:flutter/material.dart';
import '../constants/constants.dart';

class StatusBadge extends StatelessWidget {
  final String status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color statusColor = AppColors.info;
    if (status == 'Active') statusColor = AppColors.success;
    if (status == 'Pending') statusColor = AppColors.warning;

    return Container(
      padding: AppPaddings.horizontalSmall,
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.1),
        borderRadius: AppMetrics.boxRadiusSmall,
      ),
      child: Text(
        status,
        style: AppTextStyles.bodySmall.copyWith(color: statusColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
