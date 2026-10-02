




///////////  IMAGES ARE TOO SMALL 
/// IF CODED EXACTLY LIKE UI SCREENSHOT THE INVISIBLE SPACING IS PUSHING APP WELCOME BAR DOWN
/// THEREFORE CODED WITH SIMILAR ICONS INSTEAD OF ASSET IMAGE




/* import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:assignment_myp/core/app_constants/asset_paths.dart';
import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.dashboardPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AssetPaths.leadingDrawerWhiteCircle),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AssetPaths.actionsFavourite),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetPaths.actionsNotification,
                  height: 50,
                  width: 50,
                ),
                Positioned(
                  top: 6,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.coralOrange,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Transform.scale(
              scale: 1.8,
              child: Image.asset(
                AssetPaths.actionsProfileIcon,
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */

//coded with similar icon:-
import 'package:assignment_myp/core/app_constants/app_colors.dart';
import 'package:assignment_myp/core/app_constants/app_spacing.dart';
import 'package:flutter/material.dart';

// Your extracted reusable widget class
class CircleButton extends StatelessWidget {
  final double size;
  final Widget child;

  const CircleButton({
    super.key,
    required this.size,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.dashboardPadding,
        ),
        child: SizedBox(
          height: 40,
          child: Row(
            children: [
              // Menu button using the new CircleButton class
              const CircleButton(
                size: 32,
                child: Icon(
                  Icons.sort,
                  size: 19,
                  color: Color(0xFF34466B),
                ),
              ),

              const Spacer(),

              // Location button using the new CircleButton class
              const CircleButton(
                size: 32,
                child: Icon(
                  Icons.location_on_outlined,
                  size: 21,
                  color: Color(0xFF34466B),
                ),
              ),

              const SizedBox(width: 24),

              // Notification button
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 25,
                    color: Color(0xFF526587),
                  ),
                  Positioned(
                    top: -4,
                    right: -5,
                    child: Container(
                      width: 15,
                      height: 15,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.coralOrange,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 25),

              // Profile button (placeholder icon, no image asset)
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFE2E5EB),
                    width: 1,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundColor: Color(0xFFE7EDF4),
                  child: Icon(
                    Icons.person,
                    size: 22,
                    color: Color(0xFF526587),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
