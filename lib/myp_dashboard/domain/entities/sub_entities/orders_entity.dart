// 1. Orders Entity
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';

class OrdersEntity extends DashboardBaseEntity {
  final int activeOrdersCount;
  final List<String> activeUserAvatars;
  final int pendingOrdersCount;
  final List<String> pendingUserAvatars;

  OrdersEntity({
    required super.cardName,
    required super.imagePath,
    required super.backgroundColor,
    required super.buttonColor,
    required this.activeOrdersCount,
    required this.activeUserAvatars,
    required this.pendingOrdersCount,
    required this.pendingUserAvatars,
  });
}