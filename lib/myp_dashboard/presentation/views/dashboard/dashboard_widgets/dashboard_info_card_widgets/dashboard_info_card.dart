import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/card_theme_helper.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/infocard_left_section.dart';
import 'package:flutter/material.dart';

class DashboardInfoCard extends StatelessWidget {
  final DashboardBaseEntity
  entity; // Can be strongly typed to DashboardBaseEntity

  const DashboardInfoCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    // Initialize the helper with the card name
    final theme = CardThemeHelper(entity.cardName);

    // Direct clean assignment
    final Color bgColor = theme.backgroundColor;
    final Color labelColor = theme.labelColor;

    return Container(
      width: 330, // Replaced MediaQuery with a fixed width
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Left Section content
          InfocardLeftSection(entity: entity, labelColor: labelColor),
        ],
      ),
    );
  }
}
