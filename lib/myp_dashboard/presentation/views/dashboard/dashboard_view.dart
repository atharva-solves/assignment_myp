import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(height: 100,width: 100,color: Colors.greenAccent,));
  }
}
