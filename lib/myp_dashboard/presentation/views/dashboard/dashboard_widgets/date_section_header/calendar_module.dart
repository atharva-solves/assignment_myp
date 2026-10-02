import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:flutter/material.dart';

class CalendarModule extends StatelessWidget {
  const CalendarModule({Key? key}) : super(key: key);

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
          Image.asset(
            AssetPaths.iconCalender,
            height: 16,
            width: 16,
            color: AppColors.navyBlue,
          ),
          const SizedBox(width: 6),
          Text(
            "JAN, 2021",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.navyBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}