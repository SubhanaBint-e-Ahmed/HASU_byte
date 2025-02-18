import 'package:flutter/material.dart';
import 'laundary_screen.dart';
import 'Food&Cooking.dart';

class PhysicalTab extends StatelessWidget {
  const PhysicalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, 
      padding: const EdgeInsets.all(25.0), 
      mainAxisSpacing: 10.0, 
      crossAxisSpacing: 30.0, 
      childAspectRatio: 1, 
      children: [
        _buildCategoryCard(
            context, 'Cloths & Shoes', 'assets/images/clothes&shoes.png'),
        _buildCategoryCard(context, 'Laundary', 'assets/images/laundary.png'),
        _buildCategoryCard(context, 'Cleaning', 'assets/images/cleaning 2.png'),
        _buildCategoryCard(
            context, 'Cars and Vehicals', 'assets/images/car (1).png'),
        _buildCategoryCard(
            context, 'Food and Cooking', 'assets/images/food.png'),
        _buildCategoryCard(context, 'Maid', 'assets/images/maid.png'),
        _buildCategoryCard(
            context, 'Health & Beauty', 'assets/images/health&beauty.png'),
        _buildCategoryCard(
            context, 'Home & Garden', 'assets/images/home&garden.png'),
        _buildCategoryCard(
            context, 'Tutor', 'assets/images/tutor.png'),
        _buildCategoryCard(
            context, 'Pet', 'assets/images/pets.png'),
        _buildCategoryCard(
            context, 'Repairing', 'assets/images/repair.png'),
        _buildCategoryCard(
            context, 'Traders', 'assets/images/traders.png'),
        _buildCategoryCard(
            context, 'Sports & Fitness', 'assets/images/sport.png'),
        _buildCategoryCard(
            context, 'Social', 'assets/images/social.png'),
        _buildCategoryCard(
            context, 'Sports & Fitness', 'assets/images/emergency.png'),
        _buildCategoryCard(
            context, 'Mind & Body', 'assets/images/mind&body.png'),
        _buildCategoryCard(
            context, 'Electronics', 'assets/images/electronics.png'),
        _buildCategoryCard(
            context, 'Flowers', 'assets/images/flower.png'),
        _buildCategoryCard(
            context, 'Toys & stationery', 'assets/images/toys.png'),
            _buildCategoryCard(
            context, 'Pet care', 'assets/images/petcare.png'),
      ],
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String title, String imagePath) {
    return GestureDetector(
        onTap: () {
           if (title == 'Laundary') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LaundryScreen()), 
        );
      }
      
      else if (title == 'Food and Cooking') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FoodCookingScreen()),
        );
      }
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13.0), 
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), 
                blurRadius: 30.0, 
                offset: const Offset(0, 6), 
              ),
            ],
          ),
          child: Card(
            elevation: 0,
            margin: const EdgeInsets.all(5), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), 
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Image.asset(
                    imagePath,
                    width: 60, 
                    height: 60, 
                    fit: BoxFit
                        .contain, 
                  ),
                  const SizedBox(
                      height: 8.0), 
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title Details'),
      ),
      body: Center(
        child: Text('Details for $title'),
      ),
    );
  }
}
