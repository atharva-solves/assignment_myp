// 3. Customers Entity
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';

class CustomersEntity extends DashboardBaseEntity {
  final int newCustomersCount;
  final List<String> newCustomerAvatars;
  final double growthPercentage;
  final bool isGrowthPositive;
  final int activeCustomersCount;
  final List<String> activeCustomerAvatars;

  CustomersEntity({
    required super.cardName,
    required super.imagePath,
   
    required this.newCustomersCount,
    required this.newCustomerAvatars,
    required this.growthPercentage,
    required this.isGrowthPositive,
    required this.activeCustomersCount,
    required this.activeCustomerAvatars,
  });
}