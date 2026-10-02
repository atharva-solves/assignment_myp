import 'package:flutter/material.dart';

class NewCustomersAvatarStack extends StatelessWidget {
  final List<String> avatars;
  final Color borderColor;
  final double avatarSize;
  final double overlap;
  final double plusBadgeSize;

  const NewCustomersAvatarStack({
    super.key,
    required this.avatars,
    // Defaulting to the cyan/green color seen on the magenta card avatars in the screenshot
    this.borderColor = const Color(0xFF2BC193), 
    this.avatarSize = 36.0,
    this.overlap = 22.0,
    this.plusBadgeSize = 16.0, // Much smaller than the avatar
  });

  @override
  Widget build(BuildContext context) {
    final int count = avatars.length;

    // Safety check
    if (count == 0) {
      return const SizedBox.shrink();
    }

    // Calculate total width needed: 
    // Start of last avatar + avatar width + just enough space for the overhanging plus badge
    final double stackWidth = ((count - 1) * overlap) + avatarSize + (plusBadgeSize / 2);

    return SizedBox(
      width: stackWidth,
      height: avatarSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // 1. Render Avatars
          ...List.generate(count, (index) {
            return Positioned(
              left: (index * overlap)+2,
              child: Container(
                height: avatarSize,
                width: avatarSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: borderColor,
                    width: 1.5,
                  ),
                  image: DecorationImage(
                    image: AssetImage(avatars[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),

          // 2. Small White Plus (+) Badge attached to the last avatar
          Positioned(
            // Align to the right edge of the final avatar in the stack
            left: (((count - 1) * overlap) + avatarSize - (plusBadgeSize / 1.2))+4,
            // Pushed slightly towards the bottom to match the screenshot
            bottom: 06,
            child: Container(
              height: plusBadgeSize,
              width: plusBadgeSize,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.add,
                size: plusBadgeSize * 0.75, // Scales the cross inside the small badge
                color: Colors.grey.shade700, 
              ),
            ),
          ),
        ],
      ),
    );
  }
}