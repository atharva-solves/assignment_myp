import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class TimelineModule extends StatelessWidget {
  const TimelineModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
            BoxShadow(
             color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "TIMELINE",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.navyBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.arrow_drop_down,
            color: AppColors.navyBlue,
            size: 20,
          ),
        ],
      ),
    );
  }
}