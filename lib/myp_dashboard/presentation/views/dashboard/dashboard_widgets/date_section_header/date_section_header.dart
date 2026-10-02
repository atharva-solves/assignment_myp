import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/date_section_header/calendar_module.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/date_section_header/date_day_module.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/date_section_header/timeline_module.dart';
import 'package:flutter/material.dart';

// Import your newly created widget files here
// import 'date_day_module.dart';
// import 'timeline_module.dart';
// import 'calendar_module.dart';

class DateSectionHeader extends StatelessWidget {
  const DateSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.dashboardPadding,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DateDayModule(), // Left side (Today / Jan 23)
          const SizedBox(
            width: 8,
          ), // Add a small flexible gap instead of spaceBetween if needed
          // Wrap the middle/dropdown item in Flexible so it shrinks if needed
          Flexible(child: TimelineModule()),

           SizedBox(width: 8),

          // Wrap the right-side button in Flexible so it doesn't overflow
          Flexible(child: CalendarModule()),
        ],
      ),
    );
  }
}
