import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';
import '../../../../models/models.dart';

class SidebarNavItem extends StatelessWidget {
  final PageItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const SidebarNavItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.grey.shade200 : Colors.transparent,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(24.0),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 32.0, right: 16.0),
        leading: Icon(
          item.icon,
          color: isSelected ? AppColors.textPrimary : AppColors.textSecondary,
          size: 22,
        ),
        title: Text(
          item.title,
          style: isSelected
              ? AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                )
              : AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.textSecondary,
                ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(24.0)),
        ),
        onTap: onTap,
      ),
    );
  }
}
