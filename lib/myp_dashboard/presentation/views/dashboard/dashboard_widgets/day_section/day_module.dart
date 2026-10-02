import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_text_sizes.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/day_entity.dart';
import 'package:flutter/material.dart';

class DayModule extends StatelessWidget {
  final DayEntity dayEntity;
  final VoidCallback onTap;

  const DayModule({
    super.key,
    required this.dayEntity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const Color activeGreen = AppColors.darkTeal; // Color(0xFF0F8181)
    const Color unselectedDayColor = Color(0xFFB8C2D0);
    const Color unselectedDateColor = AppColors.navyBlue;

    final Color dayTextColor =
        dayEntity.isSelected ? activeGreen : unselectedDayColor;
    final Color dateTextColor =
        dayEntity.isSelected ? activeGreen : unselectedDateColor;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Day
          Text(
            dayEntity.day,
            style: TextStyle(
              fontSize: AppTextSizes.caption,
              fontWeight: FontWeight.w600,
              color: dayTextColor,
            ),
          ),
          const SizedBox(height: 4),

          // 2. Date
          Text(
            dayEntity.date,
            style: TextStyle(
              fontSize: AppTextSizes.itemTitle,
              fontWeight: FontWeight.bold,
              color: dateTextColor,
            ),
          ),
          const SizedBox(height: 4),

          // 3. Green Dot Indicator or Shrink Box
          dayEntity.isSelected
              ? Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: activeGreen,
                    shape: BoxShape.circle,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}