import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UserTitleCard extends StatelessWidget {
  final String userName;
  final String userRole;
  final String profileImageUrl;

  const UserTitleCard({
    super.key,
    required this.userName,
    required this.userRole,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.p1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(profileImageUrl),
            onBackgroundImageError: (_, __) {
              debugPrint("Image loading failed");
            },
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome,",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "$userName ($userRole)",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
