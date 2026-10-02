import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/subsciptions_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/avatar_stack_module.dart';
import 'package:flutter/material.dart';

class SubscriptionsBlueDeliveriesCard extends StatelessWidget {
  final SubscriptionsEntity entity;

  const SubscriptionsBlueDeliveriesCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        // 1. The Blue Deliveries Text Container
        Container(
          padding: const EdgeInsets.fromLTRB(14, 10, 14, 34), // Extra bottom padding for overlap
          decoration: BoxDecoration(
            color: AppColors.royalBlue, // Ensure this matches your blue color constant
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                entity.deliveriesCount.toString().padLeft(2, '0'),
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "deliveries",
                style: textTheme.labelMedium?.copyWith(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        
        // 2. The Avatars overlapping the bottom edge
        Positioned(
          bottom: -18,
          left: 20, // Locks the stack to the left side as shown in the design
          child: OrdersActiveAvatarStack(
            avatars: entity.deliveryUserAvatars,
            borderColor: Colors.purple.shade300, // Violet/purple border
            avatarSize: 34,
            overlap: 22,
          ),
        ),
      ],
    );
  }
}