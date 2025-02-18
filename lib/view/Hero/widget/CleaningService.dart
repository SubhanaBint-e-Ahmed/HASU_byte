import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class CleaningService extends StatelessWidget {
  const CleaningService({super.key});

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
            'House Cleaning',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8), 
         
          const Text(
            'Posted: 25.09.2023',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          // Rating Row
          const Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 19,),
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
            'I need to write a professional resume for applying to the company, etc.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16), 
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image 1
              Image.asset(
                'assets/images/Rectangle 85 (2).png',
                height: 150,
                width: 142,
                fit: BoxFit.cover,
              ),
              // Image 2
              Image.asset(
                'assets/images/Rectangle 85 (2).png',
                height: 150,
                width: 142,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
