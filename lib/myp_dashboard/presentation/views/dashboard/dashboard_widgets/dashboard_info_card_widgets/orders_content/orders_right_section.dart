import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_orange_active.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_white_pending_card.dart';
import 'package:flutter/material.dart';

class OrdersRightSection extends StatelessWidget {
  final OrdersEntity entity;

  const OrdersRightSection({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 180,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // ORANGE ACTIVE ORDERS CARD
          Positioned(
            top: 0,
            right: 0,
            child: OrdersOrangeActiveCard(
              entity: entity,
            ),
          ),

          // WHITE PENDING ORDERS CARD
          Positioned(
            top: 100,
            right: 0,
            child: OrdersWhitePendingCard(
              entity: entity,
            ),
          ),
        ],
      ),
    );
  }
}