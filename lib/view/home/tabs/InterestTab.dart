import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'interest_selection_screen.dart';

class InterestTab extends StatelessWidget {
  const InterestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Your Interests',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Choose your interests for a better experience.',
                style: TextStyle(fontSize: 15.0),
              ),
              const SizedBox(height: 20.0),

              Center(
                child: SizedBox(
                  width: 170,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const InterestSelectionScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: const Text(
                      'Personalize',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),
              // Interest Tiles
              _buildInterestTile(
                  'Clothes & Shoes', 'assets/images/clothes&shoes.png'),
              const SizedBox(height: 10),
              _buildInterestTile('Laundry', 'assets/images/laundary.png'),
              const SizedBox(height: 10),
              _buildInterestTile('Cleaning', 'assets/images/cleaning 2.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInterestTile(String title, String imagePath) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Image with fixed size
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
