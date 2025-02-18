import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for services
    List<String> serviceNames = [
      'Cleaning',
      'Wall painting',
      'Cleaning',
      'Wall painting',
      'Cleaning',
    ];
    List<String> ratings = ['4.5', '4.7', '4.3', '4.9', '4.6'];
    List<String> followers = ['900', '1.2K', '800', '1.5K', '700'];
    List<String> images = [
      "assets/images/Rectangle 85 (2).png",
      "assets/images/Rectangle 85 (3).png",
      "assets/images/Rectangle 85 (2).png",
      "assets/images/Rectangle 85 (3).png",
      "assets/images/Rectangle 85 (2).png",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "Services you might like to get",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 300, // Adjusted height for larger content
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: serviceNames.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  child: Container(
                    width: 180, // Width for larger images
                    color: Colors.white, // Background color
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image with rounded corners
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            images[index], // Unique image for each item
                            height: 160, // Adjusted height
                            width: 170, // Adjusted width
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Row for Rating, Followers, and Heart Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Rating and Followers
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow, // Yellow star
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
                                const SizedBox(width: 4),
                                Text(
                                  "(${followers[index]} )", // Followers count
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            // Heart Icon
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Service Name
                        Text(
                          serviceNames[index],
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
                          "I will clean your house",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.gry,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        // New Row: From and Price/Hour
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end, // Align items to the right
                          children: [
                            Text(
                              "From", // "From" text
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.gry,
                              ),
                            ),
                            Text(
                              "\$25/hr", // Price per hour
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
