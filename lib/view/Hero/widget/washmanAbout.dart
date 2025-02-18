import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class WashmanAbout extends StatelessWidget {
  const WashmanAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF04060F).withOpacity(0.08),
            offset: const Offset(0, 4),
            blurRadius: 60,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          // Rating Row
          const Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 19),
              SizedBox(width: 4),
              Text(
                '4.8',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.purple,
                ),
              ),
              Text(
                ' (900+)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Description
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus suscipit iaculis rutrum.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),

         
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12), 
                    child: Image.asset(
                      'assets/images/washService.png',
                      height: 150,
                      width: 142,
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
