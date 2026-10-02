import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/day_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/subsciptions_entity.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  /// Reactive List initialized with generic base entity
  final RxList<DashboardBaseEntity> dashboardInfoList = <DashboardBaseEntity>[].obs;

  /// Reactive List for Days
  final RxList<DayEntity> daysList = <DayEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadDashboardData();
    loadDaysData();
  }

  void loadDashboardData() {
    dashboardInfoList.assignAll([
      // 1. Orders Card Object
      OrdersEntity(
        cardName: 'Orders',
        imagePath: AssetPaths.iconOrders,
        activeOrdersCount: 3,
        activeUserAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        pendingOrdersCount: 2,
        pendingUserAvatars: const [
          AssetPaths.profileImg4,
          AssetPaths.profileImg5,
        ],
      ),

      // 2. Subscriptions Card Object
      SubscriptionsEntity(
        cardName: 'Subscriptions',
        imagePath: AssetPaths.iconSubscriptions,
        deliveriesCount: 3,
        deliveryUserAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        activeSubscriptionsCount: 10,
        pendingDeliveriesCount: 119,
      ),

      // 3. View Customers Card Object
      CustomersEntity(
        cardName: 'View Customers',
        imagePath: AssetPaths.iconViewCustomers,
        newCustomersCount: 15,
        newCustomerAvatars: const [
          AssetPaths.profileImg1,
          AssetPaths.profileImg2,
          AssetPaths.profileImg3,
        ],
        growthPercentage: 1.8,
        isGrowthPositive: true,
        activeCustomersCount: 10,
        activeCustomerAvatars: const [
          AssetPaths.profileImg4,
          AssetPaths.profileImg5,
          AssetPaths.profileImg1,
        ],
      ),
    ]);
  }

  /// Load days list items
  void loadDaysData() {
    daysList.assignAll([
      DayEntity(day: 'MON', date: '20', isSelected: false),
      DayEntity(day: 'TUE', date: '21', isSelected: false),
      DayEntity(day: 'WED', date: '22', isSelected: false),
      DayEntity(day: 'THU', date: '23', isSelected: true),
      DayEntity(day: 'FRI', date: '24', isSelected: false),
      DayEntity(day: 'SAT', date: '25', isSelected: false),
      DayEntity(day: 'SUN', date: '26', isSelected: false),
    ]);
  }

  /// Single selection logic for days
  void selectDay(int index) {
    for (int i = 0; i < daysList.length; i++) {
      daysList[i] = daysList[i].copyWith(isSelected: i == index);
    }
  }
}