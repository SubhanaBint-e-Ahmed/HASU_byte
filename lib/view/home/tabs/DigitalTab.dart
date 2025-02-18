import 'package:flutter/material.dart';

class DigitalTab extends StatelessWidget {
  const DigitalTab({super.key});

   @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, 
      padding: const EdgeInsets.all(23.0),
      mainAxisSpacing: 10.0, 
      crossAxisSpacing: 30.0, 
      childAspectRatio: 1, 
      children: [
        _buildCategoryCard(context, 'AI Service', 'assets/images/AI Service.png'),
        _buildCategoryCard(context, 'Business', 'assets/images/Business.png'),
        _buildCategoryCard(context, 'Consulting', 'assets/images/Consulting.png'),
        _buildCategoryCard(context, 'Data', 'assets/images/Data.png'),
        _buildCategoryCard(context, 'Digital Marketing', 'assets/images/Digital Marketing.png'),
       _buildCategoryCard(context, 'Graphics & Design', 'assets/images/Graphics & Design.png'),
       _buildCategoryCard(context, 'Lifestyle', 'assets/images/Lifestyle.png'),
        _buildCategoryCard(context, 'Music & Audio', 'assets/images/Music & Audio.png'),
        _buildCategoryCard(context, 'Photography', 'assets/images/Photography.png'),
        _buildCategoryCard(context, 'Programming', 'assets/images/Programming.png'),
        _buildCategoryCard(context, 'Video & Animation ', 'assets/images/Video & Animation.png'),
        _buildCategoryCard(context, 'Writing & Translation', 'assets/images/Writing & Translation.png'),
        
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
