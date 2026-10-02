import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/bnb/bnb_module.dart';
import 'package:flutter/material.dart';

class DashboardBottomBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTabSelected;

  const DashboardBottomBar({
    super.key,
    this.selectedIndex = 0,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(), // This creates the hollow cutout
      notchMargin: 8.0, // This defines how much empty space is around the FAB
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 1. Home
            BnbModule(
              assetPath: AssetPaths.iconBnbHome,
              name: "Home",
              isSelected: selectedIndex == 0,
              onTap: () => onTabSelected(0),
            ),

            // 2. Customers
            BnbModule(
              assetPath: AssetPaths.iconBnbCustomers,
              name: "Customers",
              isSelected: selectedIndex == 1,
              onTap: () => onTabSelected(1),
            ),

            // Spacer for the center FAB notch
            const SizedBox(width: 48),

            // 3. Khata
            BnbModule(
              assetPath: AssetPaths.iconBnbKhata,
              name: "Khata",
              isSelected: selectedIndex == 2,
              onTap: () => onTabSelected(2),
            ),

            // 4. Orders
            BnbModule(
              assetPath: AssetPaths.iconOrders,
              name: "Orders",
              isSelected: selectedIndex == 3,
              onTap: () => onTabSelected(3),
            ),
          ],
        ),
      ),
    );
  }
}