import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/bnb/dashboard_bottom_bar.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_appbar.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/dashboard_info_card.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/infocard_listview.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/date_section_header/date_section_header.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/day_section/day_list_module.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/floating_action_button.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/new_order/new_order_widget.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/welcome_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        // Center ensures the ConstrainedBox stays in the middle of wide screens
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 750, // Standard tablet breakpoint; adjust as needed
            ),
            child: Column(
              children: [
                const DashboardAppbar(),
                const SizedBox(height: 10),
                const DashboardWelcomeHeader(),
                const SizedBox(height: 32),
                
                // Dashboard Cards Section
                const InfoCardListView(),
                const SizedBox(height: 32),
                
                const DateSectionHeader(),
                const SizedBox(height: 24),
                
                const DayListModule(),
                const SizedBox(height: 30),
                
                const NewOrderWidget(),
                const SizedBox(height: 80), 
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FAB(),
      bottomNavigationBar: DashboardBottomBar(
        selectedIndex: 0,
        onTabSelected: (index) {
          // Update your state here
        },
      ),
    );
  }
}