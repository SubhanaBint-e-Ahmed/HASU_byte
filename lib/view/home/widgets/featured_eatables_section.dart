import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class FeaturedEatablesSection extends StatelessWidget {
  const FeaturedEatablesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // List of eatables details
    final List<String> eatableNames = [
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
    ];
    final List<String> prices = [
      '\$3.5',
      '\$3.5',
      '\$3.5',
      '\$3.5',
      '\$3.5',
    ];
    final List<String> calories = [
      '551 Kcal',
      '551 Kcal',
      '551 Kcal',
      '551 Kcal',
      '551 Kcal',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "Featured Eatables",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200, // Adjusted height for image and text
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eatableNames.length, // Number of featured eatables
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: SizedBox(
                  width: 90, 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), 
                        child: Image.asset(
                          "assets/images/Frame 10876.png",
                          height: 120,
                          width: 140, 
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 1),
                      // Eatable Name
                      Text(
                        eatableNames[index], // Eatable name
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                        maxLines: 2, // Restrict to 2 lines
                        overflow: TextOverflow.ellipsis, // Ellipsis for overflow
                      ),
                      const SizedBox(height: 4),
                      // Price and Calories in a Row
                      Row(
                        children: [
                          Text(
                            prices[index], // Price
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.purple,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            ' • ${calories[index]}', // Calorie information with a separator
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 219, 219, 219),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
