import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class TopCreatorsCard extends StatelessWidget {
  const TopCreatorsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allLarge,
      decoration: BoxDecoration(
        color: const Color(0xFF14234C),
        borderRadius: AppMetrics.boxRadiusLarge,
        boxShadow: AppDecorations.shadowSubtle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Top Creators', style: AppTextStyles.heading3.copyWith(color: Colors.white)),
          AppMetrics.spaceMedium,
          // Inner Table Wrapper
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xFF0C1C45),
              borderRadius: AppMetrics.boxRadiusMedium,
            ),
            child: Column(
              children: [
                // Table Header
                Row(
                  children: [
                    Expanded(flex: 3, child: Text('Name', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.7), fontWeight: FontWeight.bold))),
                    Expanded(flex: 1, child: Text('Artworks', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.7), fontWeight: FontWeight.bold))),
                    Expanded(flex: 2, child: Text('Rating', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.7), fontWeight: FontWeight.bold))),
                  ],
                ),
                const SizedBox(height: 12),
                Divider(height: 1, color: Colors.white.withValues(alpha: 0.1)),
                const SizedBox(height: 16),
                // Creator Rows
                _buildCreatorRow(
                  name: 'Maggie Johnson',
                  artworks: '98',
                  ratingValue: 0.98,
                  avatarUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=150',
                ),
                const SizedBox(height: 16),
                _buildCreatorRow(
                  name: 'Alex Rivera',
                  artworks: '84',
                  ratingValue: 0.84,
                  avatarUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&q=80&w=150',
                ),
                const SizedBox(height: 16),
                _buildCreatorRow(
                  name: 'Kiko Bailey',
                  artworks: '72',
                  ratingValue: 0.72,
                  avatarUrl: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&q=80&w=150',
                ),
                const SizedBox(height: 16),
                _buildCreatorRow(
                  name: 'David Chen',
                  artworks: '60',
                  ratingValue: 0.60,
                  avatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=150',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCreatorRow({
    required String name,
    required String artworks,
    required double ratingValue,
    required String avatarUrl,
  }) {
    return Row(
      children: [
        // Name Column
        Expanded(
          flex: 3,
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white.withValues(alpha: 0.2),
                backgroundImage: NetworkImage(avatarUrl),
              ),
              AppMetrics.spaceSmall,
              Expanded(
                child: Text(name, style: AppTextStyles.bodyLarge.copyWith(color: Colors.white, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
        // Artworks Column
        Expanded(
          flex: 1,
          child: Text(artworks, style: AppTextStyles.bodyLarge.copyWith(color: Colors.white)),
        ),
        // Rating Column
        Expanded(
          flex: 2,
          child: LinearProgressIndicator(
            value: ratingValue,
            backgroundColor: Colors.white.withValues(alpha: 0.2),
            color: const Color(0xFFD61D4D),
            minHeight: 8,
            borderRadius: AppMetrics.boxRadiusCircular,
          ),
        ),
      ],
    );
  }
}
