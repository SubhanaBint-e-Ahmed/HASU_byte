import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380, 
      height: 64, 
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20), 
      decoration: BoxDecoration(
        color: AppColors.white, 
        borderRadius: const BorderRadius.all( Radius.circular(16),), 
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF04060F).withOpacity(0.08), 
            offset: const Offset(0, 4), 
            blurRadius: 60, 
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          const Text(
            "Reviews",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0), 
            child: SvgPicture.asset(
              'assets/icons/ArDown.svg', 
              height: 24,
              width: 24,
                fit: BoxFit.contain, 
            ),
          ),
        ],
      ),
    );
  }
}
