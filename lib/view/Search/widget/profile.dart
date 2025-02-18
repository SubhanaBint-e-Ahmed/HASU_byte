import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/Hero/George.dart';
import 'package:get/get.dart';

class FilteredPeople extends StatelessWidget {
  const FilteredPeople({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> personNames = [
      'George James',
      'George James',
      'George James',
      'George James',
      'George James',
      'George James',
    ];
    final List<String> ratings = ['4.8', '4.8', '4.8', '4.8', '4.8', '4.8'];
    final List<String> followers = [
      '900+',
      '900+',
      '900+',
      '900+',
      '900+',
      '900+',
    ];
    final List<String> images = [
      "assets/images/Rectangle 85.png",
      "assets/images/Rectangle 85 (1).png",
      "assets/images/Girl.png",
      "assets/images/Rectangle 85.png",
      "assets/images/Rectangle 85 (1).png",
      "assets/images/Girl.png",
    ];

    return SingleChildScrollView(
      // Added SingleChildScrollView to enable scrolling
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView.builder(
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scroll of GridView
          shrinkWrap: true, // Make GridView fit content
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 16.0, // space between columns
            mainAxisSpacing: 16.0, // space between rows
            childAspectRatio: 0.75, // Adjust to fit content well
          ),
          itemCount: personNames.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                   Get.to(() =>  const ProfileScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.all(10), // Add desired padding here
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            images[index],
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: AppColors.yellow,
                                  size: 23,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  ratings[index],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColors.purple,
                                    
                                  ),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "(${followers[index]})",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.grey,
                              size: 21,
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
                        const Text(
                          "Wallstreet Avenue, NY, USA",
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.gry,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
