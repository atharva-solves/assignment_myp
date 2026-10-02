import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/avatar_stack_module.dart';
import 'package:flutter/material.dart';

class CustomersDetailContainer extends StatelessWidget {
  final CustomersEntity entity;

  const CustomersDetailContainer({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      clipBehavior: Clip.none,
      children: [Container(
        width:92,
        height: 60,
        padding: const EdgeInsets.fromLTRB(08,5, 18, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left Text Info
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                //  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${entity.activeCustomersCount}",
                      style: textTheme.displayMedium?.copyWith(
                        fontSize: 22,
                        color: AppColors.navyBlue,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      "Active",
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: AppColors.navyBlue.withOpacity(0.7),
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  "Customers",
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 11,
                    color: AppColors.navyBlue,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                  ),
                ),
              ],
            ),
      
           
          ],
        ),
      ),
       // Right Avatar Stack
          Positioned(
            top: 16,
            right: -40,
            child: OrdersActiveAvatarStack(
              avatars: entity.activeCustomerAvatars,
              avatarSize: 26,
              overlap: 16,
              borderColor: AppColors.mintGreen,
            ),
          ),
      ]
      
    );
  }
}
