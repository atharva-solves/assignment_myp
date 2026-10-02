import 'package:assignment_myp/core/app_constants/app_text_theming.dart';
import 'package:assignment_myp/core/routing/app_pages.dart';
import 'package:assignment_myp/core/routing/app_routes.dart';
import 'package:assignment_myp/myp_dashboard/presentation/views/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.initialRoute,
     theme: ThemeData(
      useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    textTheme: AppTextTheme.lightTextTheme,
  ),
    );
  }
}
