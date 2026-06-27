import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class CustomCalendarCard extends StatelessWidget {
  const CustomCalendarCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample static calendar dates matching the mockup perfectly
    final weekdays = ['Mo', 'Tu', 'We', 'Th', 'Fri', 'Sa', 'Su'];
    final dates = [
      // Previous month dates (disabled)
      {'date': '29', 'disabled': true, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '30', 'disabled': true, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '31', 'disabled': true, 'selectedSquare': false, 'selectedCircle': false},
      // Current month
      {'date': '1', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '2', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '3', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '4', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '5', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '6', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '7', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '8', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '9', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '10', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '11', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '12', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '13', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '14', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '15', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '16', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '17', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '18', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '19', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '20', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '21', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '22', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '23', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '24', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '25', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '26', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '27', 'disabled': false, 'selectedSquare': true, 'selectedCircle': false}, // Square highlighted
      {'date': '28', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '29', 'disabled': false, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '30', 'disabled': false, 'selectedSquare': false, 'selectedCircle': true}, // Circle highlighted
      {'date': '1', 'disabled': true, 'selectedSquare': false, 'selectedCircle': false},
      {'date': '2', 'disabled': true, 'selectedSquare': false, 'selectedCircle': false},
    ];

    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Month / Year Selectors
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E0FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Text('OCT', style: AppTextStyles.bodyMedium.copyWith(color: const Color(0xFF452B9C), fontWeight: FontWeight.bold)),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down, color: Color(0xFF452B9C), size: 16),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Row(
                children: [
                  Text('2023', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 4),
                  Icon(Icons.keyboard_arrow_down, color: AppColors.textPrimary.withValues(alpha: 0.5), size: 16),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // 2. Weekdays Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: weekdays.map((day) {
              return Text(day, style: AppTextStyles.bodySmall.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.bold));
            }).toList(),
          ),
          const SizedBox(height: 12),

          // 3. Calendar Grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.0,
            ),
            itemCount: dates.length,
            itemBuilder: (context, index) {
              final item = dates[index];
              final dateStr = item['date'] as String;
              final isDisabled = item['disabled'] as bool;
              final isSelectedSquare = item['selectedSquare'] as bool;
              final isSelectedCircle = item['selectedCircle'] as bool;

              Color textColor = isDisabled
                  ? Colors.grey.shade400
                  : AppColors.textPrimary;

              if (isSelectedSquare || isSelectedCircle) {
                textColor = Colors.white;
              }

              Widget dateWidget = Center(
                child: Text(
                  dateStr,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: textColor,
                    fontWeight: isSelectedSquare || isSelectedCircle ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
              );

              if (isSelectedSquare) {
                dateWidget = Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF452B9C), // Purple square
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: dateWidget,
                );
              } else if (isSelectedCircle) {
                dateWidget = Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF6200EE), // Purple circle
                    shape: BoxShape.circle,
                  ),
                  child: dateWidget,
                );
              }

              return dateWidget;
            },
          ),
        ],
      ),
    );
  }
}
