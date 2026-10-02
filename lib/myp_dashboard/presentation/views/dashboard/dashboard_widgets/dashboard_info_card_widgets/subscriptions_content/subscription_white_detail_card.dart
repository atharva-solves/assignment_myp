import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class SubscriptionWhiteDetailCard extends StatelessWidget {
  final String count;
  final String status;
  final String label;

  const SubscriptionWhiteDetailCard({
    super.key,
    required this.count,
    required this.status,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(11,14,11 ,07),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
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
        crossAxisAlignment: CrossAxisAlignment.start, // Left aligns content inside the card
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                count,

                style: textTheme.displayMedium?.copyWith(
                  fontSize: 22,
                      height: 1.0,
                    ),
              ),
              const SizedBox(width: 4),
              Text(
                status,
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  height: 1.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: textTheme.bodyMedium?.copyWith(
              fontSize: 12,
              color: AppColors.navyBlue,
              fontWeight: FontWeight.w500,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}