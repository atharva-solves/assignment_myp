import 'package:assignment_myp/myp_dashboard/domain/entities/dashboard_base_class.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/customers_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/orders_entity.dart';
import 'package:assignment_myp/myp_dashboard/domain/entities/sub_entities/subsciptions_entity.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/customer_content/customers_right_section.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/orders_content/orders_right_section.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_widgets/dashboard_info_card_widgets/subscriptions_content/subscriptions_right_section.dart';
import 'package:flutter/material.dart';

class InfoCardRightSection extends StatelessWidget {
  final DashboardBaseEntity entity;

  const InfoCardRightSection({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    if (entity is OrdersEntity) {
      return OrdersRightSection(
        entity: entity as OrdersEntity,
      );
    }

    if (entity is SubscriptionsEntity) {
      return SubscriptionsRightSection(
        entity: entity as SubscriptionsEntity,
      );
    }

    if (entity is CustomersEntity) {
      return CustomersRightSection(
        entity: entity as CustomersEntity,
      );
    }

    return const SizedBox();
  }
}