import 'package:flutter/material.dart';
import '../../../config/app_pages.dart';
import '../../../constants/constants.dart';
import 'left_sidebar/sidebar_header.dart';
import 'left_sidebar/sidebar_nav_item.dart';
import 'left_sidebar/sidebar_user_profile.dart';
import 'left_sidebar/sidebar_workspaces.dart';

class SidebarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const SidebarWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(right: BorderSide(color: AppColors.textDisabled.withValues(alpha: 0.2))),
      ),
      child: Column(
        children: [
          // 1. Brand Logo Header
          const SidebarHeader(),

          // 2. User Profile Section
          const SidebarUserProfile(),

          // 3. Scrollable Nav Items & Workspaces
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  // Primary Nav Items
                  ...List.generate(AppPages.pages.length, (index) {
                    return SidebarNavItem(
                      item: AppPages.pages[index],
                      isSelected: selectedIndex == index,
                      onTap: () => onItemSelected(index),
                    );
                  }),
                  // Workspaces Section
                  const SidebarWorkspaces(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // 4. Footer Settings & Logout
          Column(
            children: [
              Divider(height: 1, color: Colors.grey.shade200),
              const SizedBox(height: 8),
              ...List.generate(AppPages.footerPages.length, (index) {
                final item = AppPages.footerPages[index];
                return ListTile(
                  contentPadding: const EdgeInsets.only(left: 32, right: 16),
                  leading: Icon(item.icon, color: AppColors.textSecondary, size: 22),
                  title: Text(item.title, style: AppTextStyles.bodyLarge.copyWith(color: AppColors.textSecondary)),
                  onTap: () {},
                );
              }),
              const SizedBox(height: 24),
            ],
          ),
        ],
      ),
    );
  }
}
