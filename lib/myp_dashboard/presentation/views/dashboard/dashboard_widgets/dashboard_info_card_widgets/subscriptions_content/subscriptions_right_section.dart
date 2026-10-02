import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/subsciptions_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/subscriptions_content/subscription_blue_delivery_card.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/subscriptions_content/subscription_white_detail_card.dart';
import 'package:flutter/material.dart';

class SubscriptionsRightSection extends StatelessWidget {
  final DashboardBaseEntity entity;

  const SubscriptionsRightSection({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    if (entity case SubscriptionsEntity subscriptions) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          // 1. Active Subscriptions
          Positioned(
            top: 54,
            left: 18,
            child: SubscriptionWhiteDetailCard(
              count: subscriptions.activeSubscriptionsCount.toString(),
              status: 'Active',
              label: 'Subscriptions',
            ),
          ),
      
          // 2. Pending Deliveries
          Positioned(
            top: 122,
            left:30,
            child: SubscriptionWhiteDetailCard(
              count: subscriptions.pendingDeliveriesCount.toString(),
              status: 'Pending',
              label: 'Deliveries',
            ),
          ),
      
          // 3. Deliveries Card
          Positioned(
           top: -12,
            child: SubscriptionsBlueDeliveriesCard(
              entity: subscriptions,
            ),
          ),
        ],
      );
    }

    return const SizedBox();
  }
}