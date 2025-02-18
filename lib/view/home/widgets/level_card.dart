import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Level:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 6.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.p1.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  "Small",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.p1,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 24.0,
            thickness: 1,
            color: Colors.grey[200],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "•   Price",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                "\$20/hr",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Row(
          //   children: [
          //     const Text(
          //       "• Type                     Apartment",
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 8.0),
          // const Text(
          //   "• Rooms                 2",
          //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          // ),
          // const SizedBox(height: 8.0),
          // const Text(
          //   "• Bathrooms          1",
          //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          // ),
          // const SizedBox(height: 8.0),
          // const Text(
          //   "• Delivery time      1 day",
          //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          // ),
        ],
      ),
    );
  }
}
