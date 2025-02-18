import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TaskerRating extends StatelessWidget {
  const TaskerRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF04060F).withOpacity(0.08),
            offset: const Offset(0, 4),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "956 reviews for this tasker",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 22.4 / 16,
                  letterSpacing: 0.2,
                  decoration: TextDecoration.none,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 4),
                  Text("4.3", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.purple)),
                  Text(" (900+)", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF9E9E9E))),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildStarBar(5, 230),
          _buildStarBar(4, 52),
          _buildStarBar(3, 21),
          _buildStarBar(2, 6),
          _buildStarBar(1, 1),
        ],
      ),
    );
  }

  Widget _buildStarBar(int stars, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$stars stars",
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: count / 956,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            "($count)",
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
