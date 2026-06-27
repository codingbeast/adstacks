import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({super.key, this.title = 'Overview'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppMetrics.paddingExtraLarge,
        bottom: AppMetrics.paddingMedium,
      ),
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Row(
        children: [
          // 1. Title (Over left of Main Content, indented by paddingLarge to match Main Content padding)
          const SizedBox(width: AppMetrics.paddingLarge),
          Text(
            title,
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.textSecondary,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),

          // 2. Search Box (Flexible to gracefully shrink on smaller screens without overflowing)
          Flexible(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              child: CustomSearchField(hintText: 'Search'),
            ),
          ),
          const SizedBox(width: AppMetrics.paddingLarge),

          // 3. Right Sidebar Header Area (Exactly 320px wide, matching RightSidebarWidget perfectly!)
          SizedBox(
            width: 320,
            child: Padding(
              // Inset internal items by paddingLarge so they align perfectly with RightSidebarWidget's internal padding!
              padding: const EdgeInsets.symmetric(horizontal: AppMetrics.paddingLarge),
              child: Row(
                children: [
                  // Left side: Calendar, Notification, Startup icons
                  IconButton(
                    icon: const Icon(Icons.calendar_today_outlined, color: AppColors.textPrimary),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  AppMetrics.spaceSmall,
                  NotificationBadgeButton(onTap: () {}, hasUnread: true),
                  AppMetrics.spaceSmall,
                  IconButton(
                    icon: const Icon(Icons.power_settings_new_outlined, color: AppColors.textPrimary),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  const Spacer(),
                  // Right side: Profile icon
                  const UserAvatar(initials: 'CB'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
