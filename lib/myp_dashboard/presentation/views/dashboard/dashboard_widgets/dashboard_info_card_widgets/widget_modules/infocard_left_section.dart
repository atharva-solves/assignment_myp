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
    return Column(
      children: [
        const SizedBox(height: 22),
    
        Container(
          width: 122,
          height: 122,
          decoration: const BoxDecoration(
            color: AppColors.cardSurface,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            entity.imagePath,
            fit: BoxFit.contain,
          ),
        ),
    
        const SizedBox(height: 22),
    
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 30,
            maxWidth: 120,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              entity.cardName,
              overflow: TextOverflow.fade,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
    
        const SizedBox(height: 10),
      ],
    );
  }
}