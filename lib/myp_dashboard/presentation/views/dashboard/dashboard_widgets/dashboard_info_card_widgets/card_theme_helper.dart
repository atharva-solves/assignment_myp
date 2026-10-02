import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardThemeHelper {
  final String cardName;

  CardThemeHelper(this.cardName);

  /// Returns the dynamic background color based on the card name
  Color get backgroundColor {
    switch (cardName) {
      case 'Orders':
        return AppColors.skyBlue;
      case 'Subscriptions':
        return AppColors.gold;
      case 'View Customers':
        return AppColors.mintGreen;
      default:
        return Colors.grey.shade300;
    }
  }

  /// Returns the dynamic label color based on the card name
  Color get labelColor {
    switch (cardName) {
      case 'Orders':
        return AppColors.terracottaOrange;
      case 'Subscriptions':
        return AppColors.royalBlue;
      case 'View Customers':
        return AppColors.magentaPink;
      default:
        return Colors.grey.shade600;
    }
  }
}
