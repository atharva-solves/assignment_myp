import 'package:flutter/material.dart';

class OrdersActiveAvatarStack extends StatelessWidget {
  final List<String> avatars;
  final Color borderColor;
  final double avatarSize;
  final double overlap;

  const OrdersActiveAvatarStack({
    super.key,
    required this.avatars,
    this.borderColor = Colors.red, // Keeps your default red border
    this.avatarSize = 40.0,
    this.overlap = 26.0,
  });

  @override
  Widget build(BuildContext context) {
    final int count = avatars.length;

    // Safety check: If there are no avatars, return an empty space
    if (count == 0) {
      return const SizedBox.shrink();
    }

    // Calculate total width needed for the stack
    final double stackWidth = avatarSize + ((count - 1) * overlap);

    return SizedBox(
      width: stackWidth,
      height: avatarSize,
      child: Stack(
        children: List.generate(count, (index) {
          return Positioned(
            left: index * overlap,
            child: Container(
              height: avatarSize,
              width: avatarSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(avatars[index]),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
                border: Border.all(
                  color: borderColor,
                  width: 1.5,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
