import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../data/dashboard_data.dart';
import '../../../widgets/widgets.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allLarge,
      decoration: AppDecorations.cardSubtle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Campaign Activity', style: AppTextStyles.heading3),
          AppMetrics.spaceMedium,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingTextStyle: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold),
              dataTextStyle: AppTextStyles.bodyLarge,
              columns: const [
                DataColumn(label: Text('Campaign')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Budget')),
                DataColumn(label: Text('Spend')),
                DataColumn(label: Text('Clicks')),
              ],
              rows: DashboardData.recentCampaigns.map((campaign) {
                return DataRow(
                  cells: [
                    DataCell(Text(campaign.name, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w600))),
                    DataCell(StatusBadge(status: campaign.status)),
                    DataCell(Text(campaign.budget)),
                    DataCell(Text(campaign.spend)),
                    DataCell(Text(campaign.clicks)),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
