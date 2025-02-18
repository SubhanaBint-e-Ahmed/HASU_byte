import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class FeaturedIconSection extends StatefulWidget {
  const FeaturedIconSection({super.key});

  @override
  State<FeaturedIconSection> createState() => _FeaturedIconSectionState();
}

class _FeaturedIconSectionState extends State<FeaturedIconSection> {
 
  final List<bool> isFavorite = [false, false, false];

  @override
  Widget build(BuildContext context) {
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
    final List<String> imagePaths = [
      'assets/images/b1.png',
      'assets/images/b2.png',
      'assets/images/b3.png',
    ];

    const String favoriteIcon = 'assets/icons/Blacktick.svg';
    const String notFavoriteIcon = 'assets/icons/plusIcon.svg';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          "Featured",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eatableNames.length,
            itemBuilder: (context, index) {
              return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 6.0),
              
                child: SizedBox(
                  width: 130,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              imagePaths[index],
                              height: 130,
                              width: 180,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            eatableNames[index],
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
                      Positioned(
                        bottom: 80,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite[index] = !isFavorite[index];
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFFEEEEEE),
            ),
                            child: Opacity(
                              opacity: 1,
                              child: SvgPicture.asset(
                                isFavorite[index] ? favoriteIcon : notFavoriteIcon,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ),
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
