import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class LanguageAndTimeWidget extends StatelessWidget {
  const LanguageAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380, 
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 12), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        
          Wrap(
            spacing: 10, 
            runSpacing: 10, 
            children: [
              const Text(
                'English (US)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.purple,
                ),
              ),
              const Text(
                'English (UK)',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Polish',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'العربية',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'اردو',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle "see more" tap
                },
                child: const Text(
                  'see more+',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          const Row(
            children: [
              Text(
                'Time zone:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.purple,
                ),
              ),
              SizedBox(width: 3),
              Text(
                'London, UK (GMT+1)',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(width: 1), 
              Text(
                'Thurs, 25 April 2024, ',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                '12:45 pm',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
