import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // ---------------------------------------------------------------------------
  // Core Brand Palette (from Color Spec Sheet)
  // ---------------------------------------------------------------------------
  static const Color skyBlue = Color(0xFF33A1CC);
  static const Color gold = Color(0xFFDCB223);
  static const Color mintGreen = Color(0xFF31CE95);
  static const Color darkTeal = Color(0xFF0F8181);
  static const Color navyBlue = Color(0xFF2C3D63);
  static const Color terracottaOrange = Color(0xFFD8582B); // Spec hex #343434 (visual swatch in design)
  static const Color royalBlue = Color(0xFF234DDC);
  static const Color magentaPink = Color(0xFFCE316A);
  static const Color coralOrange = Color(0xFFFE804E);

  // ---------------------------------------------------------------------------
  // Dashboard Card Backgrounds
  // ---------------------------------------------------------------------------
  static const Color ordersCardBg = skyBlue;
  static const Color subscriptionsCardBg = gold;
  static const Color customersCardBg = mintGreen;

  // ---------------------------------------------------------------------------
  // Card Badges & Action Buttons
  // ---------------------------------------------------------------------------
  static const Color ordersBadge = terracottaOrange;
  static const Color subscriptionsBadge = royalBlue;
  static const Color customersBadge = magentaPink;

  // ---------------------------------------------------------------------------
  // UI & Text Mapping
  // ---------------------------------------------------------------------------
  static const Color fontColor = navyBlue;
  static const Color fabBackground = navyBlue;
  static const Color orderNoticeIconBg = coralOrange;
  static const Color cardSurface = Colors.white;
}