import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_text_sizes.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/avatar_stack_module.dart';
import 'package:flutter/material.dart';

class OrdersOrangeActiveCard extends StatelessWidget {
  final OrdersEntity entity;

  const OrdersOrangeActiveCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Positioned(
            top: -12,
            child: Container(
              height: 76,
              width: 122,
              decoration: BoxDecoration(
                color: AppColors.terracottaOrange,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "You have ",
                            style: textTheme.labelMedium?.copyWith(
                              color: Colors.white,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            "${entity.activeOrdersCount}",
                            style: textTheme.titleMedium?.copyWith(
                              fontSize: AppTextSizes.activeCount,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            " active",
                            style: textTheme.labelMedium?.copyWith(
                              color: Colors.white,
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "orders from",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  // Use 'case' to explicitly extract it as a CustomersEntity variable named 'customers'
                  // 1. Orders Section
                  if (entity case OrdersEntity orders)
                    Positioned(
                      bottom: -14,
                      right: 15,
                      child: OrdersActiveAvatarStack(avatars: orders.activeUserAvatars),
                    ),

                  /*    // 2. Subscriptions Section
                          if (entity case SubscriptionsEntity subscriptions)
                            Positioned(
                              bottom: -10,
                              right: 36,
                              child: SubscriptionsRightSection(
                                entity: subscriptions,
                              ),
                            ),

                          // 3. Customers Section
                          if (entity case CustomersEntity customers)
                            Positioned(
                              bottom: -10,
                              right: 36,
                              child: CustomersRightSection(entity: customers),
                            ), */
                ],
              ),
            ),
          );
    /* Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        // 1. The Dark Orange Terracotta Text Container
        Container(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 28), 
          decoration: BoxDecoration(
            color: AppColors.terracottaOrange,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
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
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "You have ",
                    style: textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    "${entity.activeOrdersCount}",
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: AppTextSizes.activeCount,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    " active",
                    style: textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
              const Text(
                "orders from",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        
        // 2. The Avatars overlapping the bottom edge
        Positioned(
          bottom: -20, 
          child: AvatarStack(
            avatars: entity.activeUserAvatars,
            borderColor: Colors.red,
          ),
        ),
      ],
    ); */
  }
}
