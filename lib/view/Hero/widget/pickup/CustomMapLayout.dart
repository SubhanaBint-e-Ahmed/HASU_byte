import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class CustomMapLayout extends StatelessWidget {
  const CustomMapLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380, // Width of the container
      height: 230, // Height of the container
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x04060F14), // Shadow color
            blurRadius: 60,
             spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text at the top
          RichText(
  text: const TextSpan(
    children: [
      TextSpan(
        text: 'Located: ',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      TextSpan(
        text: 'UK, 11 Horseferry Road, London, England',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    ],
  ),
),

          const SizedBox(height: 10), // Gap between text and image

          // Image with border radius
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Container(
                  width: 331, // Width of the image
                  height: 140, // Height of the image
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/pickup_map.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Expand button
                Positioned(
                  top: 95,
                  left: 198,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 6), // Button padding
                    decoration: BoxDecoration(
                      color: AppColors.purple, // Button background color
                      borderRadius: BorderRadius.circular(100), // Fully rounded corners
                    ),
                    child: const Text(
                      'Expand',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
