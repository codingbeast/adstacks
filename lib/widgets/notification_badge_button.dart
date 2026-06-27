import 'package:flutter/material.dart';
import '../constants/constants.dart';

class NotificationBadgeButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasUnread;

  const NotificationBadgeButton({
    super.key,
    required this.onTap,
    this.hasUnread = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined, color: AppColors.textPrimary),
          onPressed: onTap,
        ),
        if (hasUnread)
          Positioned(
            right: 6,
            top: 6,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: AppColors.error,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
