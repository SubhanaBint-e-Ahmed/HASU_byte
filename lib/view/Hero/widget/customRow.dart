import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 242, 242, 243).withOpacity(0.08),
            offset: const Offset(0, 4),
            blurRadius: 60,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left SVG Icon
          SvgPicture.asset(
            'assets/icons/abc.svg',
            width: 50,
            height: 50,
          ),
          const Row(
            children: [
              // Star icon
              Icon(
                Icons.star,
                color: AppColors.yellow,
                size: 23,
              ),
              SizedBox(width: 8), // Spacing
              // Purple-colored text
              Text(
                '4.3',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 19.6 / 14, // Line height divided by font size
                  letterSpacing: 0.2,
                  color: AppColors.purple,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
