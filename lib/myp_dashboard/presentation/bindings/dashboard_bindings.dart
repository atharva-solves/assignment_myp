import 'package:assignment_myp/myp_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:get/instance_manager.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
