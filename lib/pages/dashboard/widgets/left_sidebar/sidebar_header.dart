import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28.0,
            left: 24.0,
            right: 24.0,
            bottom: 16.0,
          ),
          child: Column(
            children: [
              // Stylized AS Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xFFD61D4D), letterSpacing: -2),
                  ),
                  Text(
                    'S',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xFF452B9C)),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                'Adstacks',
                style: AppTextStyles.bodyMedium.copyWith(color: const Color(0xFF452B9C), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(height: 1, color: Colors.grey.shade300, indent: 24, endIndent: 24),
      ],
    );
  }
}
