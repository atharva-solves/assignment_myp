import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_text_sizes.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/customer_content/new_customers_avatar_stack.dart';
import 'package:flutter/material.dart';

class CustomersNewRedCard extends StatelessWidget {
  final CustomersEntity entity;

  const CustomersNewRedCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      clipBehavior: Clip.none,
     
      children: [
        // Pink Magenta Card Container
        Container(
  
          padding: const EdgeInsets.fromLTRB(10, 8, 08 ,38), // Extra bottom space for overlapping avatars
          decoration: BoxDecoration(
            color: AppColors.magentaPink,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
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
                "${entity.newCustomersCount}",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: AppTextSizes.heroStatistic - 5, // 22px
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "New customers",
                style: textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                  fontSize: 09,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),

        // Overlapping Avatars Stack with '+' Badge
        Positioned(
          bottom: -14,
          right: 13,
          child: NewCustomersAvatarStack(avatars: entity.newCustomerAvatars)
        ),
      ],
    );
  }

}