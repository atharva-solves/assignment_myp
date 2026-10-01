import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/subsciptions_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Adjust relative imports according to your project structure
// import '../../domain/entities/dashboard_base_class.dart';
// import '../../domain/entities/sub_entities/orders_entity.dart';
// import '../../domain/entities/sub_entities/subscriptions_entity.dart';
// import '../../domain/entities/sub_entities/customers_entity.dart';
// import '../../../../core/app_constants/asset_paths.dart';

class DashboardController extends GetxController {
  /// Reactive List initialized with generic base entity
  final RxList<DashboardBaseEntity> dashboardInfoList = <DashboardBaseEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadDashboardData();
  }

  void loadDashboardData() {
    dashboardInfoList.assignAll([
      // 1. Orders Card Object
      OrdersEntity(
        cardName: 'Orders',
        imagePath: AssetPaths.group914,
        backgroundColor: const Color(0xFF33A1CC),
        buttonColor: const Color(0xFFD8582B),
        activeOrdersCount: 3, // Matches "3 active orders"[cite: 18]
        activeUserAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        pendingOrdersCount: 2, // Matches "02 Pending"[cite: 18]
        pendingUserAvatars: const [
          AssetPaths.profileImg4,
          AssetPaths.profileImg5,
        ],
      ),

      // 2. Subscriptions Card Object
      SubscriptionsEntity(
        cardName: 'Subscriptions',
        imagePath: AssetPaths.group916,
        backgroundColor: const Color(0xFFDCB223),
        buttonColor: const Color(0xFF2652D8),
        deliveriesCount: 3, // Matches "03 deliveries"[cite: 19]
        deliveryUserAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        activeSubscriptionsCount: 10, // Matches "10 Active"[cite: 19]
        pendingDeliveriesCount: 119, // Matches "119 Pending"[cite: 19]
      ),

      // 3. View Customers Card Object
      CustomersEntity(
        cardName: 'View Customers',
        imagePath: AssetPaths.group919,
        backgroundColor: const Color(0xFF31CE95),
        buttonColor: const Color(0xFFCE316A),
        newCustomersCount: 15, // Matches "15 New customers"[cite: 20]
        newCustomerAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        growthPercentage: 1.8, // Matches "1.8%"[cite: 20]
        isGrowthPositive: true,
        activeCustomersCount: 10, // Matches "10 Active"[cite: 20]
        activeCustomerAvatars: const [
          AssetPaths.profileImg4,
          AssetPaths.profileImg5,
          AssetPaths.profileImg1,
        ],
      ),
    ]);
  }
}