import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class AllProjectsCard extends StatelessWidget {
  const AllProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.allLarge,
      decoration: BoxDecoration(
        color: const Color(0xFF091C44),
        borderRadius: AppMetrics.boxRadiusLarge,
        boxShadow: AppDecorations.shadowSubtle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('All Projects', style: AppTextStyles.heading3.copyWith(color: Colors.white)),
          AppMetrics.spaceMedium,
          _buildProjectTile(
            title: 'Technology behind the blockchain',
            projectNumber: 'Project #1',
            imageUrl: 'https://images.unsplash.com/photo-1639762681485-074b7f938ba0?auto=format&fit=crop&q=80&w=150',
            isSelected: true,
          ),
          const SizedBox(height: 16),
          _buildProjectTile(
            title: 'Technology behind the blockchain',
            projectNumber: 'Project #2',
            imageUrl: 'https://images.unsplash.com/photo-1621416894569-0f39ed31d247?auto=format&fit=crop&q=80&w=150',
            isSelected: false,
          ),
          const SizedBox(height: 16),
          _buildProjectTile(
            title: 'Technology behind the blockchain',
            projectNumber: 'Project #3',
            imageUrl: 'https://images.unsplash.com/photo-1642104704074-907c0698cbd9?auto=format&fit=crop&q=80&w=150',
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectTile({
    required String title,
    required String projectNumber,
    required String imageUrl,
    required bool isSelected,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFD61D4D) : const Color(0xFF14244D),
        borderRadius: AppMetrics.boxRadiusMedium,
      ),
      child: Row(
        children: [
          // Left side image
          ClipRRect(
            borderRadius: AppMetrics.boxRadiusMedium,
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 60,
                height: 60,
                color: Colors.white.withValues(alpha: 0.1),
                child: const Icon(Icons.account_tree_outlined, color: Colors.white),
              ),
            ),
          ),
          AppMetrics.spaceMedium,
          // Title and Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.bodyLarge.copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
                AppMetrics.spaceTiny,
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('$projectNumber · ', style: AppTextStyles.bodyMedium.copyWith(color: Colors.white.withValues(alpha: 0.8))),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'See project details',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppMetrics.spaceSmall,
          // Right side edit button
          IconButton(
            icon: Icon(Icons.edit_outlined, color: Colors.white.withValues(alpha: 0.8)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
