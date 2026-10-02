import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_text_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._(); // Private constructor to prevent instantiation

  /// Configured Material 3 [TextTheme] mapped directly to design role sizes and brand colors using Roboto
  static TextTheme get lightTextTheme {
    const Color mutedTextColor = Color(
      0xFF8A94A6,
    ); // Secondary grayish navy seen across subtitles & day labels

    return TextTheme(
      // 1. Prominent Statistical Numbers ("02", "3") inside Info Cards
      displayMedium: GoogleFonts.roboto(
        fontSize: AppTextSizes.heroStatistic, // 24.0
        fontWeight: FontWeight.bold, // w700
        color: AppColors.fontColor,
        height: 1.0, // Tight baseline alignment next to "Pending"
        letterSpacing: -0.5,
      ),
      // Main Page Header ("Welcome, Mypcot !!")
      headlineMedium: GoogleFonts.roboto(
        fontSize: AppTextSizes.pageHeader, // 18.0
        fontWeight: FontWeight(700),
        color: const Color(0xFF53648B), // Slate navy hue from the design spec
        letterSpacing: -0.3,
        height: 1.0,
      ),
      // 3. Component Titles & Active Calendar Date Numbers (16px)
      titleMedium: GoogleFonts.roboto(
        fontSize: AppTextSizes.itemTitle,
        fontWeight: FontWeight.w600,
        color: AppColors.fontColor,
      ),
      // 4. Standard Body Reading Text (14px)
      bodyMedium: GoogleFonts.roboto(
        fontSize: AppTextSizes.bodyPrimary,
        fontWeight: FontWeight.normal,
        color: AppColors.fontColor,
      ),
      // Subtitle Caption ("here is your dashboard....")
      bodySmall: GoogleFonts.roboto(
        fontSize: AppTextSizes.caption, // 12.0
        fontWeight: FontWeight.w400,
        color: const Color(0xFF9EA6B5), // Soft muted grayish-blue
        height: 1.3,
      ),
      // 2. Action Button Label ("Orders")
      labelLarge: GoogleFonts.roboto(
        fontSize: AppTextSizes.bodyPrimary, // 14.0
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 0.2,
        height: 1.2,
      ), // 7. Days of the Week & Dropdown Labels ('MON', 'TUE', 'TIMELINE') (12px)
      labelMedium: GoogleFonts.roboto(
        fontSize: AppTextSizes.caption,
        fontWeight: FontWeight.w500,
        color: mutedTextColor,
        letterSpacing: 0.5,
      ),
      // 8. Micro Timestamps & Status Badges ('09:00 AM', Notification count) (10px)
      labelSmall: GoogleFonts.roboto(
        fontSize: AppTextSizes.microLabel,
        fontWeight: FontWeight.bold,
        color: AppColors.coralOrange,
      ),
    );
  }
}
