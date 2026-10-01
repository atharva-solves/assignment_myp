import 'package:assignment_myp/core/routing/app_routes.dart';
import 'package:assignment_myp/myp_dashboard/presentation/bindings/dashboard_bindings.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_view.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initialRoute,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
