import 'package:flutter/material.dart';


class FoodTab extends StatelessWidget {
  const FoodTab({super.key});

   @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Two columns
      padding: const EdgeInsets.all(20.0), // Padding around the grid
      mainAxisSpacing: 10.0, // Vertical spacing between items
      crossAxisSpacing: 30.0, // Horizontal spacing between items
      childAspectRatio: 1, // Aspect ratio to ensure square items
      children: [
        _buildCategoryCard(context, 'Kosher', 'assets/images/kosher.png'),
        _buildCategoryCard(context, 'African', 'assets/images/africa.png'),
        _buildCategoryCard(context, 'Arabic', 'assets/images/arabic.png'),
        _buildCategoryCard(context, 'Turkish', 'assets/images/turkish.png'),
        _buildCategoryCard(context, 'Vietnamese', 'assets/images/Vietnamese.png'),
       _buildCategoryCard(context, 'Korean', 'assets/images/Korean.png'),
       _buildCategoryCard(context, 'Soul food', 'assets/images/Soul food.png'),
        _buildCategoryCard(context, 'Soup', 'assets/images/Soup.png'),
        _buildCategoryCard(context, 'Salad', 'assets/images/Salad.png'),
        _buildCategoryCard(context, 'American', 'assets/images/American.png'),
        _buildCategoryCard(context, 'Seafood', 'assets/images/Seafood.png'),
        _buildCategoryCard(context, 'Street food', 'assets/images/Street food.png'),
        _buildCategoryCard(context, 'Taiwanese', 'assets/images/Taiwanese.png'),
        _buildCategoryCard(context, 'Thailan', 'assets/images/Thailan.png'),
        _buildCategoryCard(context, 'BBQ', 'assets/images/BBQ.png'),
        _buildCategoryCard(context, 'Comfort food', 'assets/images/Comfort food.png'),
         _buildCategoryCard( context, 'Greek', 'assets/images/Greek.png'),

          _buildCategoryCard(context, 'Caribbean', 'assets/images/Caribbean.png'),
        _buildCategoryCard(context, 'Sushi', 'assets/images/Sushi.png'),
        _buildCategoryCard(context, 'Indian', 'assets/images/Indian.png'),
        _buildCategoryCard(context, 'Vegetarian', 'assets/images/Vegetarian.png'),
        _buildCategoryCard(context, 'Tea & Coffee', 'assets/images/Tea & Coffee.png'),
       _buildCategoryCard(context, 'Italian', 'assets/images/Italian.png'),
       _buildCategoryCard(context, 'Mexican', 'assets/images/Mexican.png'),
        _buildCategoryCard(context, 'Pizza', 'assets/images/Pizza (2).png'),
        _buildCategoryCard(context, 'GYM Meals', 'assets/images/GYM Meals.png'),
        _buildCategoryCard(context, 'Halal', 'assets/images/Halal.png'),
        _buildCategoryCard(context, 'Desserts', 'assets/images/Desserts.png'),
        _buildCategoryCard(context, 'Chinese', 'assets/images/Chinese.png'),
        _buildCategoryCard(context, 'Ramen', 'assets/images/Ramen.png'),
        _buildCategoryCard(context, 'Chocolates & sweets', 'assets/images/Chocolates & sweets.png'),
        _buildCategoryCard(context, 'Snacks', 'assets/images/Snacks.png'),
        _buildCategoryCard(context, 'Biscuits & crackers', 'assets/images/Biscuits & crackers.png'),
         _buildCategoryCard( context, 'Ice cream', 'assets/images/Ice cream.png'),
          _buildCategoryCard(context, 'Frozen', 'assets/images/Frozen.png'),
        _buildCategoryCard(context, 'Pasta & noodles', 'assets/images/Pasta & noodles.png'),
        _buildCategoryCard(context, 'Meat & poultry', 'assets/images/Meat & poultry.png'),
        _buildCategoryCard(context, 'Dairy, chilled & Eggs', 'assets/images/Dairy, chilled & Eggs (2).png'),
        _buildCategoryCard(context, 'Beverages', 'assets/images/Beverages.png'),
        _buildCategoryCard(context, 'Bakery & breakfast', 'assets/images/Bakery & breakfast.png'),
         _buildCategoryCard( context, 'Fresh fruits', 'assets/images/Fresh fruits.png'),
              _buildCategoryCard( context, 'Fresh Vegetables', 'assets/images/Fresh Vegetables.png'),
      
      ],
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String title, String imagePath) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlaceholderScreen(title)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13.0), // Smaller radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Lighter shadow color
                blurRadius: 30.0, // Less blur for smaller shadow
                offset: const Offset(0, 6), // Shadow position
              ),
            ],
          ),
          child: Card(
            elevation: 0,
            margin: const EdgeInsets.all(5), // Small margin to reduce overall size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Smaller border radius for the card
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0), // Reduced padding inside the card
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Display images with smaller size
                  Image.asset(
                    imagePath,
                    width: 60, // Reduced width
                    height: 60, // Reduced height
                    fit: BoxFit
                        .contain, // Ensures image fills the box proportionally
                  ),
                  const SizedBox(
                      height: 8.0), // Reduced spacing between image and text
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold), // Smaller font size
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
