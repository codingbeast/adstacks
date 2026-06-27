import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../data/dashboard_data.dart';
import '../../../layout/responsive_builder.dart';
import 'metric_card_widget.dart';

class MetricsSection extends StatelessWidget {
  const MetricsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      // 1. Desktop & Tablet View: Displays as a horizontal Row
      desktop: Row(
        children: DashboardData.metrics.map((metric) {
          final isLast = DashboardData.metrics.last == metric;
          return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MetricCardWidget(
                    title: metric.title,
                    value: metric.value,
                    percentage: metric.percentage,
                    isPositive: metric.isPositive,
                    icon: metric.icon,
                    color: metric.color,
                  ),
                ),
                if (!isLast) AppMetrics.spaceLarge,
              ],
            ),
          );
        }).toList(),
      ),
      // 2. Mobile View: Stacks vertically as a Column
      mobile: Column(
        children: DashboardData.metrics.map((metric) {
          final isLast = DashboardData.metrics.last == metric;
          return Column(
            children: [
              MetricCardWidget(
                title: metric.title,
                value: metric.value,
                percentage: metric.percentage,
                isPositive: metric.isPositive,
                icon: metric.icon,
                color: metric.color,
              ),
              if (!isLast) AppMetrics.spaceLarge,
            ],
          );
        }).toList(),
      ),
    );
  }
}
