import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:flutter/material.dart';

class CustomersPercentageContainer extends StatelessWidget {
  final double growthPercentage;
  final bool isPositive;

  const CustomersPercentageContainer({
    super.key,
    required this.growthPercentage,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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
        // Background Image using asset path
        image: const DecorationImage(
          image: AssetImage(AssetPaths.customerPercentageGraphImage),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topLeft,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$growthPercentage%",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 24,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                  color: AppColors.navyBlue,
                  height: 1.0,
                ),
          ),
          const SizedBox(width: 30),
         
        ],
      ),
    );
  }
}