import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    // List of eatables details
    final List<String> eatableNames = [
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
      'Double Sausage and Egg Muffin',
    ];
    final List<String> prices = [
      '\$3.5',
      '\$3.5',
      '\$3.5',
    ];
    final List<String> calories = [
      '551 Kcal',
      '551 Kcal',
      '551 Kcal',
    ];

    // List of images for each item
    final List<String> imagePaths = [
      'assets/images/b1.png',  
      'assets/images/b2.png',  
      'assets/images/b3.png',  
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "Featured",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eatableNames.length, 
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: SizedBox(
                  width: 90, 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display the image dynamically
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), 
                        child: Image.asset(
                          imagePaths[index],  // Use the image path from the list
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
                        maxLines: 2, 
                        overflow: TextOverflow.ellipsis, 
                      ),
                      const SizedBox(height: 4),
                    
                      Row(
                        children: [
                          Text(
                            prices[index], 
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.purple,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            ' • ${calories[index]}', 
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
