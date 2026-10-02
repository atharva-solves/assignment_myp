import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class DateDayModule extends StatelessWidget {
  const DateDayModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "January, 23 2021",
          style: Theme.of(context).textTheme.bodySmall, 
        ),
        Text(
          "Today",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.navyBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}