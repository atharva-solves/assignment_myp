import 'package:flutter/material.dart';

/// Abstract Parent Base Class
abstract class DashboardBaseEntity {
  final String cardName;
  final String imagePath;

  DashboardBaseEntity({
    required this.cardName,
    required this.imagePath,

  });
}
