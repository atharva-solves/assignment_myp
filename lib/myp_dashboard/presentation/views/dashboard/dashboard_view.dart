import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_appbar.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/dashboard_info_card.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/welcome_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// Ensure you import your entity class if strictly typing 'DashboardBaseEntity'
// import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashboardAppbar(),
            const SizedBox(height: 18),
            DashboardWelcomeHeader(),
            
            const SizedBox(height: 18),
            // Dashboard Cards Section
            SizedBox(
              height: 210, // Approximate height matching the design proportions
              child: Obx(() {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.dashboardPadding,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.dashboardInfoList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    final entity = controller.dashboardInfoList[index];
                    return DashboardInfoCard(entity: entity);
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

