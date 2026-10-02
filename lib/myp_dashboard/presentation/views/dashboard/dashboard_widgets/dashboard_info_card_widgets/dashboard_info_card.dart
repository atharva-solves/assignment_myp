import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/card_theme_helper.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/widget_modules/infocard_left_section.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_right_section.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/widget_modules/infocard_right_section.dart';
import 'package:flutter/material.dart';

class DashboardInfoCard extends StatelessWidget {
  final DashboardBaseEntity entity;

  const DashboardInfoCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final theme = CardThemeHelper(entity.cardName);

    final Color bgColor = theme.backgroundColor;
    final Color labelColor = theme.labelColor;

    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 230,
      width: 320,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 191, 227, 244),
          width: 4,
        ),
      ),
      child: Row(
        children: [
          // LEFT SIDE — Expanded remains here
          Expanded(
            child: InfocardLeftSection(entity: entity, labelColor: labelColor),
          ),

          // RIGHT SIDE — Expanded remains here
          Expanded(
            child: InfoCardRightSection(entity: entity),
          ),
        ],
      ),
    );
  }
}
