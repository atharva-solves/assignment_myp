import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/day_section/day_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DayListModule extends GetView<DashboardController> {
  const DayListModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.dashboardPadding,
      ),
      child: SizedBox(
        height: 60,
        child: Obx(() {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: controller.daysList.length,
            separatorBuilder: (context, index) => const SizedBox(width: 30),
            itemBuilder: (context, index) {
              final dayEntity = controller.daysList[index];
              return DayModule(
                dayEntity: dayEntity,
                onTap: () => controller.selectDay(index),
              );
            },
          );
        }),
      ),
    );
  }
}