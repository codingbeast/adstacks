import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class SidebarWorkspaces extends StatelessWidget {
  const SidebarWorkspaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        // Workspaces Header Banner
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
          color: const Color(0xFFE2E0FF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'WORKSPACES',
                style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: AppColors.textPrimary),
              ),
              const Icon(Icons.add, color: AppColors.textPrimary, size: 20),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Adstacks Dropdown Item
        ListTile(
          contentPadding: const EdgeInsets.only(left: 48, right: 32),
          title: Text('Adstacks', style: AppTextStyles.bodyLarge.copyWith(color: AppColors.textSecondary)),
          trailing: const Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary, size: 20),
          onTap: () {},
        ),
        // Finance Dropdown Item
        ListTile(
          contentPadding: const EdgeInsets.only(left: 48, right: 32),
          title: Text('Finance', style: AppTextStyles.bodyLarge.copyWith(color: AppColors.textSecondary)),
          trailing: const Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary, size: 20),
          onTap: () {},
        ),
      ],
    );
  }
}
