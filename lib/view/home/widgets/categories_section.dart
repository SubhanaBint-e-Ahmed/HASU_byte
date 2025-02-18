import 'package:cocoon/view/home/Categories.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = [
      'assets/images/cloths (2).png',
      'assets/images/laundary.png',
      'assets/images/cleaning 2.png',
      'assets/images/car (1).png',
    ];

    final List<String> buttonText = [
      'Clothes and Shoes',
      'Laundry',
      'Cleaning',
      'Cars and Vehicles',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        // Categories Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the category screen using GetX
                Get.to(const CategoriesScreen());
              },
              child: const Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purple,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5), // Space between header and list
        // Horizontal ListView of Buttons
       SizedBox(
  height: 120, // Increase the height of the button container
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: imageAssets.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Padding(  // Added Padding widget here
          padding: const EdgeInsets.only(top: 10.0,bottom: 10),  // Padding on top of the box
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 8,
                  blurRadius: 40,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: AppButton.outline(
              width: 120,
              height: 100, 
              title: 'cloths',
              background: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageAssets[index],
                      height: 50, 
                      width: 50, 
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 8), 
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0), 
                      child: Text(
                        buttonText[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12, 
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center, 
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {
               
              },
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
