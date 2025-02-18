import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';


class PeopleSection extends StatelessWidget {
  const PeopleSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<String> personNames = [
      'George James',
      'Jane Smith',
      'Emily Johnson',
      'Michael Brown',
      'Sarah Wilson',
    ];
    final List<String> ratings = ['4.5', '4.7', '4.3', '4.9', '4.6'];
    final List<String> followers = [
      '900',
      '1.2K',
      '800',
      '1.5K',
      '700',
    ];
    final List<String> images = [
      "assets/images/Rectangle 85.png",
      "assets/images/Rectangle 85 (1).png",
      "assets/images/Rectangle 85.png",
      "assets/images/Rectangle 85 (1).png",
      "assets/images/Rectangle 85.png",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          "Popular heroes in your region",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 250, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: personNames.length, 
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12), 
                  child: Container(
                    width: 180, 
                    color: Colors.white, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            images[index], // Unique image for each item
                            height: 160, // Increased height
                            width: 170, // Increased width
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Row for Rating, Followers, and Bookmark
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Rating and Followers
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: AppColors.yellow, // Yellow star
                                  size: 23,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  ratings[index], // Rating value
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "(${followers[index]} )", // Followers count
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            // Bookmark Icon
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        
                        Text(
                          personNames[index],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        // Description
                        const Text(
                          "Wallstreet Avenue, NY, USA",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.gry,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
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
