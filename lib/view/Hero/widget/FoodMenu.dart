import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import '../FoodDetails.dart';

class FoodMenuScreen extends StatelessWidget {
  const FoodMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodCategory(
              categoryName: 'Muffin',
              items: [
                FoodItem(
                  imageUrl: 'assets/images/muffin.png',
                  title: 'Double Sausage and Egg Muffin',
                  price: '\$3.5',
                  calories: '551 Kcal',
                  description: 'Double Sausage and Egg Muffin with special cheese and chicken steaks',
                  onTap: () {
                    Get.to(() => const FoodDetailsScreen(
                      title: 'Double Sausage and Egg Muffin',
                      description: 'Double Sausage and Egg Muffin with special cheese and chicken steaks',
                      imageUrl: 'assets/images/muffin.png',
                      price: '\$3.5',
                      calories: '551 Kcal',
                    ));
                  },
                ),
                FoodItem(
                  imageUrl: 'assets/images/muffin.png',
                  title: 'Double Sausage and Egg Muffin',
                  price: '\$3.5',
                  calories: '551 Kcal',
                  description: 'Double Sausage and Egg Muffin with special cheese and chicken steaks',
                  onTap: () {
                    Get.to(() => const FoodDetailsScreen(
                      title: 'Double Sausage and Egg Muffin',
                      description: 'Double Sausage and Egg Muffin with special cheese and chicken steaks',
                      imageUrl: 'assets/images/muffin.png',
                      price: '\$3.5',
                      calories: '551 Kcal',
                    ));
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            FoodCategory(
              categoryName: 'Cheese Burger',
              items: [
                FoodItem(
                  imageUrl: 'assets/images/muffin.png',
                  title: 'Cheese Burger',
                  price: '\$3.5',
                  calories: '551 Kcal',
                  description: 'Cheese Burger with special cheese and chicken steaks',
                  onTap: () {
                    Get.to(() => const FoodDetailsScreen(
                      title: 'Cheese Burger',
                      description: 'Cheese Burger with special cheese and chicken steaks',
                      imageUrl: 'assets/images/muffin.png',
                      price: '\$3.5',
                      calories: '551 Kcal',
                    ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCategory extends StatelessWidget {
  final String categoryName;
  final List<FoodItem> items;

  const FoodCategory({super.key, required this.categoryName, required this.items});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryName,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...items,
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String calories;
  final String description;
  final VoidCallback onTap;

  const FoodItem({super.key, 
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.calories,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-10, 0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(
              width: 390,
              height: 120,
              child: Opacity(
                opacity: 1.0,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imageUrl,
                        height: 115,
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontFamily: 'Gellix',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 1.4,
                              letterSpacing: 0.2,
                              decoration: TextDecoration.none,
                              textBaseline: TextBaseline.alphabetic,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                price,
                                style: const TextStyle(
                                  color: AppColors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                calories,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            description,
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 380,
              height: 1,
              color: const Color(0xFFEEEEEE),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

/*class FoodDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final String calories;

  FoodDetailsScreen({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(imageUrl, height: 200, fit: BoxFit.contain),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.purple),
                ),
                Text(
                  calories,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
