import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_text_sizes.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_white_pending_card.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/avatar_stack_module.dart';
import 'package:flutter/material.dart';

class OrdersRightSection extends StatelessWidget {
  final DashboardBaseEntity entity;

  const OrdersRightSection({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    if (entity case OrdersEntity orders) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
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
                  Positioned(
                    right: 9,
                    top: 10,
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
                              "${orders.activeOrdersCount}",
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
                            fontSize: 12,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: -14,
                    right: 15,
                    child: OrdersActiveAvatarStack(avatars: orders.activeUserAvatars),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 38,
            left: 20,
            child: OrdersWhitePendingCard(entity: orders),
          ),
        ],
      );
    }

    return const SizedBox();
  }
}
