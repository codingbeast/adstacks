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
          // 1. Title
          const SizedBox(width: AppMetrics.paddingLarge),
          Text(
            title,
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.textSecondary,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),

          // 2. Search Box (Positioned elegantly on the right side)
          Flexible(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              child: CustomSearchField(hintText: 'Search'),
            ),
          ),
          const SizedBox(width: AppMetrics.paddingLarge),

          // 3. Top Right Action Icons & User Avatar (Unified header actions)
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
          AppMetrics.spaceLarge,
          const UserAvatar(initials: 'CB'),
          const SizedBox(width: AppMetrics.paddingLarge),
        ],
      ),
    );
  }
}
