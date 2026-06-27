import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class TodayBirthdayCard extends StatelessWidget {
  const TodayBirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: const Color(0xFF202644), // Gorgeous dark slate/purple container
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // 1. Title Row with Sparkles
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('✨', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 12),
              Text(
                'Today Birthday',
                style: AppTextStyles.heading3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 12),
              const Text('✨', style: TextStyle(fontSize: 18)),
            ],
          ),
          const SizedBox(height: 24),

          // 2. Avatars Row with Floating Birthday Cakes
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildBirthdayAvatar(imageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=150'),
              const SizedBox(width: 16),
              _buildBirthdayAvatar(imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&q=80&w=150'),
            ],
          ),
          const SizedBox(height: 24),

          // 3. Total Row (Total | 2 |)
          Row(
            children: [
              Text('Total', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.7))),
              const SizedBox(width: 24),
              Text('|', style: AppTextStyles.bodyLarge.copyWith(color: Colors.white.withValues(alpha: 0.3))),
              const SizedBox(width: 16),
              Text('2', style: AppTextStyles.heading2.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(width: 16),
              Text('|', style: AppTextStyles.bodyLarge.copyWith(color: Colors.white.withValues(alpha: 0.3))),
            ],
          ),
          const SizedBox(height: 24),

          // 4. Birthday Wishing Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFA374FF), // Vibrant purple button
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              icon: const Icon(Icons.send_outlined, size: 18, color: Colors.white),
              label: Text('Birthday Wishing', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBirthdayAvatar({required String imageUrl}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Outer Purple Border Ring
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFA374FF), width: 2),
          ),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        // Tiny Floating Cake Emoji
        Positioned(
          top: -4,
          right: -4,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF202644),
              shape: BoxShape.circle,
            ),
            child: const Text('🍰', style: TextStyle(fontSize: 14)),
          ),
        ),
      ],
    );
  }
}
