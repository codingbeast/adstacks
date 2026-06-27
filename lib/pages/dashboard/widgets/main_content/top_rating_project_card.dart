import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class TopRatingProjectCard extends StatelessWidget {
  const TopRatingProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        // 1. Pure, clean background gradient as requested by the user
        gradient: const LinearGradient(
          colors: [
            Color(0xFF4C24D0), // Rich electric violet/indigo
            Color(0xFF9E54CB), // Vibrant purple/lilac mid-tone
            Color(0xFFECA1B5), // Soft warm peach/pink
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: AppMetrics.boxRadiusLarge,
        boxShadow: AppDecorations.shadowMedium,
      ),
      child: Stack(
        children: [
          // 2. Transparent PNG graphic positioned on top of the gradient at the right side
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: 450,
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/011/153/368/original/3d-floating-abstract-geometric-shapes-png.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback transparent PNG if CDN is blocked by browser cors
                  return Image.network(
                    'https://cdn-icons-png.flaticon.com/512/11187/11187425.png',
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
          ),

          // 3. Foreground Content Area
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Subtitle
                Text(
                  'ETHEREUM 2.0',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: Colors.white.withValues(alpha: 0.85),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.0,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 12),

                // Main Title
                Text(
                  'Top Rating\nProject',
                  style: AppTextStyles.heading1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 16),

                // Description
                Text(
                  'Trending project and high rating\nProject Created by team.',
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: Colors.white.withValues(alpha: 0.9),
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 28),

                // Call to action button matching the dark midnight/navy box in the mockup
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1B1844), // Dark midnight navy
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Learn More.',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
