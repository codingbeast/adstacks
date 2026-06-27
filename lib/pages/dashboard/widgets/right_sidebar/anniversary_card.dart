import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class AnniversaryCard extends StatelessWidget {
  const AnniversaryCard({super.key});

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
                'Anniversary',
                style: AppTextStyles.heading3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 12),
              const Text('✨', style: TextStyle(fontSize: 18)),
            ],
          ),
          const SizedBox(height: 24),

          // 2. Avatars Row (3 Avatars)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildAnniversaryAvatar(imageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=150'),
              const SizedBox(width: 12),
              _buildAnniversaryAvatar(imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&q=80&w=150'),
              const SizedBox(width: 12),
              _buildAnniversaryAvatar(imageUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=150'),
            ],
          ),
          const SizedBox(height: 24),

          // 3. Total Row (Total | 3 |)
          Row(
            children: [
              Text('Total', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.7))),
              const SizedBox(width: 24),
              Text('|', style: AppTextStyles.bodyLarge.copyWith(color: Colors.white.withValues(alpha: 0.3))),
              const SizedBox(width: 16),
              Text('3', style: AppTextStyles.heading2.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(width: 16),
              Text('|', style: AppTextStyles.bodyLarge.copyWith(color: Colors.white.withValues(alpha: 0.3))),
            ],
          ),
          const SizedBox(height: 24),

          // 4. Anniversary Wishing Button
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
              label: Text('Anniversary Wishing', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnniversaryAvatar({required String imageUrl}) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFA374FF), width: 2),
      ),
      child: CircleAvatar(
        radius: 22,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
