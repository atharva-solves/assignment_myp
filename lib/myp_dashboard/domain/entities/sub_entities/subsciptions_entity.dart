// 2. Subscriptions Entity
import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';

class SubscriptionsEntity extends DashboardBaseEntity {
  final int deliveriesCount;
  final List<String> deliveryUserAvatars;
  final int activeSubscriptionsCount;
  final int pendingDeliveriesCount;

  SubscriptionsEntity({
    required super.cardName,
    required super.imagePath,
  
    required this.deliveriesCount,
    required this.deliveryUserAvatars,
    required this.activeSubscriptionsCount,
    required this.pendingDeliveriesCount,
  });
}