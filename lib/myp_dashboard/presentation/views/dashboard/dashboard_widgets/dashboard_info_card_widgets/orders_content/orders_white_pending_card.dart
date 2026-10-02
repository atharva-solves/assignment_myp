import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/widget_modules/avatar_stack_module.dart';
import 'package:flutter/material.dart';

class OrdersWhitePendingCard extends StatelessWidget {
  final OrdersEntity entity;

  const OrdersWhitePendingCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter, // Centers the avatar stack
      children: [
        // 1. The Container with text
        Container(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 28), 
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    entity.pendingOrdersCount.toString().padLeft(2, '0'),
                    style: textTheme.displayMedium?.copyWith(
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Pending",
                    style: textTheme.labelSmall?.copyWith(
                      color: const Color(0xFF9EA6B5),
                      height: 1.0, 
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4), 
              Text(
                "Orders from",
                style: textTheme.bodySmall?.copyWith(
                  color: const Color.fromARGB(255, 34, 48, 78),
                  fontWeight: FontWeight.w600,
                  height: 1.0, 
                ),
              ),
            ],
          ),
        ),
        
        // 2. The Avatar positioned at the bottom layout overlap
        Positioned(
          bottom: -18, 
          child: AvatarStack(
            avatars: entity.pendingUserAvatars,
            borderColor: Colors.white, // Blends seamlessly into white container background
          ),
        ),
      ],
    );
  }
}
