import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:flutter/material.dart';

class InfocardLeftSection extends StatelessWidget {
  final DashboardBaseEntity entity;
  final Color labelColor;

  const InfocardLeftSection({
    super.key,
    required this.entity,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -14,
      top: 22,
      bottom: 20,
      width: 180, // Increased from 150
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.cardSurface,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  entity.imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              entity.cardName,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}