import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/card_theme_helper.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/infocard_left_section.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_right_section.dart';
import 'package:flutter/material.dart';

class DashboardInfoCard extends StatelessWidget {
  final DashboardBaseEntity entity;

  const DashboardInfoCard({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = CardThemeHelper(entity.cardName);

    final Color bgColor = theme.backgroundColor;
    final Color labelColor = theme.labelColor;

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 300,
      width: 320,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          InfocardLeftSection(
            entity: entity,
            labelColor: labelColor,
          ),

          if (entity is OrdersEntity)
            Positioned(
              right: 44,
              top: -10,
              child: OrdersRightSection(
                entity: entity as OrdersEntity,
              ),
            ),
        ],
      ),
    );
  }
}