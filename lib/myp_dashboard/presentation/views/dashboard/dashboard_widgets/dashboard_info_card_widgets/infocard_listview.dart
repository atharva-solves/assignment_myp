import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/dashboard_info_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class InfoCardListView extends GetView<DashboardController> {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: SizedBox(
                height:
                    230, // Approximate height matching the design proportions
                child: Obx(() {
                  return ListView.separated(
                   
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
            );
  }
}