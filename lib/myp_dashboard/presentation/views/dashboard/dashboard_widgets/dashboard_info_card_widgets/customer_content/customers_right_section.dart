import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/customer_content/customers_percentage_container.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/customer_content/customers_red_new_card.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/customer_content/customers_white_active_card.dart';
import 'package:flutter/material.dart';

class CustomersRightSection extends StatelessWidget {
  final DashboardBaseEntity entity;

  const CustomersRightSection({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    if (entity case CustomersEntity customers) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          // 1. Growth Percentage
          Positioned(
            top: 62,
            right: 11,
            child: CustomersPercentageContainer(
              growthPercentage: customers.growthPercentage,
              isPositive: customers.isGrowthPositive,
            ),
          ),

          // 2. Active Customers
          Positioned(
            top: 134,
            
            child: CustomersDetailContainer(
              entity: customers,
            ),
          ),

          // 3. New Customers Card
          Positioned(
            top: -12,
            child: CustomersNewRedCard(
              entity: customers,
            ),
          ),
        ],
      );
    }

    return const SizedBox();
  }
}