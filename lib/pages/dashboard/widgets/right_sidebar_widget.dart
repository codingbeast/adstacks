import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'right_sidebar/anniversary_card.dart';
import 'right_sidebar/custom_calendar_card.dart';
import 'right_sidebar/today_birthday_card.dart';

class RightSidebarWidget extends StatelessWidget {
  const RightSidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // Clean, ample width for premium sidebar cards
      decoration: BoxDecoration(
        color: const Color(0xFF0E1B3D), // Deep navy blue background
        border: Border(left: BorderSide(color: AppColors.textDisabled.withValues(alpha: 0.1))),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Header Title
            Text(
              'GENERAL 10:00 AM TO 7:00 PM',
              style: AppTextStyles.bodyMedium.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 24),
            // 1. Custom Calendar Card
            const CustomCalendarCard(),
            const SizedBox(height: 24),
            // 2. Today Birthday Card
            const TodayBirthdayCard(),
            const SizedBox(height: 24),
            // 3. Anniversary Card
            const AnniversaryCard(),
          ],
        ),
      ),
    );
  }
}
