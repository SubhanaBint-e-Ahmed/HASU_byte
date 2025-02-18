import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class InterestSelectionScreen extends StatelessWidget {
  const InterestSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Search bar and Text fields at the top
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose your interest',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                20.h,
                const Text(
                  'Select at least one of the following services.',
                  style: TextStyle(fontSize: 16.0),
                ),
                16.h,
                const CustomTextField(
                  hintText: 'Search',
                  hintTextColor: AppColors.gry,
                  textColor: AppColors.black,
                  fillColor: AppColors.lightGray,
                  borderRadius: 10.0,
                  prefixIcon: 'assets/icons/search.svg',
                ),
                20.h,
              ],
            ),
          ),
          
          // Expanded list of interest tiles that can scroll
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInterestTile('Clothes & Shoes', 'assets/images/clothes&shoes.png', true),
                  10.h,
                  _buildInterestTile('Laundry', 'assets/images/laundary.png', true),
                  10.h,
                  _buildInterestTile('Cleaning', 'assets/images/cleaning 2.png', true),
                  10.h,
                  _buildInterestTile('Cars and Vehicles', 'assets/images/car (1).png', false),
                  10.h,
                  _buildInterestTile('Food & Cooking', 'assets/images/food.png', false),
                  10.h,
                  _buildInterestTile('Maid', 'assets/images/maid.png', false),
                  10.h,
                  _buildInterestTile('Health & Beauty', 'assets/images/health&beauty.png', false),
                  10.h,
                  _buildInterestTile('Home & Garden', 'assets/images/home&garden.png', false),
                  10.h,
                  _buildInterestTile('Tutor', 'assets/images/tutor.png', false),
                  10.h,
                  _buildInterestTile('Pets', 'assets/images/pets.png', false),
                  10.h,
                  _buildInterestTile('Repairing', 'assets/images/repair.png', false),
                  10.h,
                  _buildInterestTile('Traders', 'assets/images/traders.png', false),
                  10.h,
                  _buildInterestTile('Sport & Fitness', 'assets/images/sport.png', false),
                  10.h,
                  _buildInterestTile('Social', 'assets/images/social.png', false),
                  10.h,
                  _buildInterestTile('Sport & Fitness', 'assets/images/emergency.png', false),
                  10.h,
                  _buildInterestTile('Mind & Body', 'assets/images/mind&body.png', false),

                   _buildInterestTile('AI Service', 'assets/images/AI Service.png', false),
                  10.h,
                  _buildInterestTile('Business', 'assets/images/Business.png', false),
                  10.h,
                  _buildInterestTile('Consulting', 'assets/images/Consulting.png', false),
                  10.h,
                  _buildInterestTile('Data', 'assets/images/Data.png', false),
                  10.h,
                  _buildInterestTile('Digital Marketing', 'assets/images/Digital Marketing.png', false),
                  10.h,
                  _buildInterestTile('Graphics & Design', 'assets/images/Graphics & Design.png', false),
                  10.h,
                  _buildInterestTile('Lifestyle', 'assets/images/Lifestyle.png', false),
                  10.h,
                  _buildInterestTile('Music & Audio', 'assets/images/Music & Audio.png', false),
                  10.h,
                  _buildInterestTile('Photography', 'assets/images/Photography.png', false),
                  10.h,
                  _buildInterestTile('Programming', 'assets/images/Programming.png', false),
                  10.h,
                  _buildInterestTile('Video & Animation ', 'assets/images/Video & Animation.png', false),
                  10.h,
                  _buildInterestTile('Writing & Translation', 'assets/images/Writing & Translation.png', false),
                ],
              ),
            ),
          ),
          
          // Save button at the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: Center(
              child: SizedBox(
                width: 170,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();  // This will pop the screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Done',
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInterestTile(String title, String imagePath, bool isSelected) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
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
              Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value ?? false;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
