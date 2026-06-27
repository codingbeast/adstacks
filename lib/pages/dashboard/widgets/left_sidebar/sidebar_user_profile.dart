import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class SidebarUserProfile extends StatelessWidget {
  const SidebarUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
          child: Column(
            children: [
              // Circular avatar with golden border ring
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.amber, width: 2.5),
                ),
                child: const CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&q=80&w=150'),
                ),
              ),
              const SizedBox(height: 12),
              // User Name
              Text(
                'Pooja Mishra',
                style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: AppColors.textPrimary),
              ),
              const SizedBox(height: 8),
              // Admin Pill Badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFC0B9DD), width: 1.5),
                ),
                child: Text(
                  'Admin',
                  style: AppTextStyles.bodySmall.copyWith(color: const Color(0xFF452B9C), fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 1, color: Colors.grey.shade300, indent: 24, endIndent: 24),
      ],
    );
  }
}
