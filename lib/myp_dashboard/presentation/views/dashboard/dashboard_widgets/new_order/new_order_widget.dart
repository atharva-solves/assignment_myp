import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:flutter/material.dart';

class NewOrderWidget extends StatelessWidget {
  const NewOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpacing.dashboardPadding,
        vertical: 10,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
            BoxShadow(
             color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left Side - Flex taking more space
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1. Title
                Text(
                  "New order created",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF53648B), // Light navy blueish
                        fontWeight: FontWeight.w600,
                      ),
                ),
                
                const SizedBox(height: 8), // Standard space
                
                // 2. Subtitle
                Text(
                  "New Order created with Order",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF4B5563),
                      ),
                ),
                
                const SizedBox(height: 18), // Comparatively bigger space
                
                // 3. Time
                Text(
                  "09:00 AM",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.coralOrange,
                      ),
                ),
                
                const SizedBox(height: 4), // Small gap before the arrow
                
                // 4. Arrow
                const Icon(
                  Icons.arrow_forward,
                  color: AppColors.coralOrange,
                  size: 18,
                ),
              ],
            ),
          ),

          // Right Side - Flex taking lesser space with the icon
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  color: AppColors.orderNoticeIconBg,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    AssetPaths.iconNewOrder,
                    width: 40, // Adjust this to match how much space the inner icon should take
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}