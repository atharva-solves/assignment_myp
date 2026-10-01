import 'package:flutter/material.dart';

/// Abstract Parent Base Class
abstract class DashboardBaseEntity {
  final String cardName;
  final String imagePath;
  final Color backgroundColor;
  final Color buttonColor;

  DashboardBaseEntity({
    required this.cardName,
    required this.imagePath,
    required this.backgroundColor,
    required this.buttonColor,
  });
}
