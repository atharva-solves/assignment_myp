import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class BnbModule extends StatelessWidget {
  final String assetPath;
  final String name;
  final bool isSelected;
  final VoidCallback? onTap;

  const BnbModule({
    super.key,
    required this.assetPath,
    required this.name,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color activeTextColor = AppColors.navyBlue;
    const Color inactiveColor = Color(0xFF8A94A6);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            width: 22,
            height: 22,
            fit: BoxFit.contain,
            // FIX: If selected, pass 'null' to show the original multi-colored asset.
            // If not selected, apply the grey inactive color.
            color: isSelected ? null : inactiveColor, 
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              color: isSelected ? activeTextColor : inactiveColor, // Text still gets the active color
            ),
          ),
        ],
      ),
    );
  }
}