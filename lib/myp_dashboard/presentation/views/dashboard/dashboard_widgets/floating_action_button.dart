import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppColors.navyBlue,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 24),
      );
  }
}