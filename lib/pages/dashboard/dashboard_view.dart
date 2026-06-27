import 'package:flutter/material.dart';
import '../../constants/app_breakpoints.dart';
import '../../constants/app_metrics.dart';
import '../../layout/page_container.dart';
import 'widgets/main_content/all_projects_card.dart';
import 'widgets/main_content/overall_performance_card.dart';
import 'widgets/main_content/top_creators_card.dart';
import 'widgets/main_content/top_rating_project_card.dart';
import 'widgets/right_sidebar_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(context);
    // Use wide desktop threshold (>= 1400px) for side-by-side cards to ensure no table squishing or overflow
    final isWideDesktop = MediaQuery.sizeOf(context).width >= 1400;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Main Dashboard Content Area
        Expanded(
          child: PageContainer(
            sections: [
              const TopRatingProjectCard(),
              // AppMetrics.spaceTiny,
              // 50% - 50% Cards Layout
              if (isWideDesktop)
                const IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: AllProjectsCard()),
                      AppMetrics.spaceLarge,
                      Expanded(child: TopCreatorsCard()),
                    ],
                  ),
                )
              else
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AllProjectsCard(),
                    AppMetrics.spaceLarge,
                    TopCreatorsCard(),
                  ],
                ),
              // AppMetrics.spaceLarge,
              // Over all performance Graph Card
              const OverallPerformanceCard(),
            ],
          ),
        ),

        // 2. Dashboard Specific Right Sidebar (Visible on Desktop)
        if (isDesktop) const RightSidebarWidget(),
      ],
    );
  }
}
