import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'FilterButton/Filter.dart';

class LaundryScreen extends StatelessWidget {
  const LaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Implement back navigation logic here
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 20.0,
              width: 20.0,
            ),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Laundry',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const Center(
                child: Text(
                  'Hire a hero to clean your clothes and do the other laundry services',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildFilterButton('Filter', 'assets/icons/Filter.svg', () {Get.to(() => const FiltersScreen());}),
                    const SizedBox(width: 10.0),
                    _buildElevatedButton('All', AppColors.purple, AppColors.white, () {}),
                    const SizedBox(width: 10.0),
                    _buildOutlinedButton('Cleaning Jeans', () {}),
                    const SizedBox(width: 10.0),
                    _buildOutlinedButton('Cleaning', () {}),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Buy Premium or Premium+ Membership',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 14.0, color: AppColors.white),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add onPressed logic
                      },
                      child: const Text(
                        'Flat 25% Off',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              ...List.generate(
                5,
                (index) => _buildServiceCard(
                  'Cleaning your shoes',
                  '1234567890',
                  '25',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton(String text, String iconPath, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE5EEF7),
        foregroundColor: AppColors.purple,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(iconPath, height: 20.0, width: 20.0),
          const SizedBox(width: 8.0),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildElevatedButton(String text, Color background, Color foreground, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: background,
        foregroundColor: foreground,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildOutlinedButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: AppColors.purple, width: 2.0),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.purple,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildServiceCard(String title, String phoneNumber, String price) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFFDFDFD)),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFC2BDBD).withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 130.0,
                height: 120.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Rectangle 85 (2).png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: AppColors.yellow, size: 14.0),
                        SizedBox(width: 5.0),
                        Text('4.8', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)),
                        SizedBox(width: 5.0),
                        Text('(900+)', style: TextStyle(color: Colors.grey, fontSize: 9)),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)),
                    const SizedBox(height: 8.0),
                    const Text('We are the best in laundry services.', style: TextStyle(color: Colors.grey, fontSize: 9)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 80.0),
                  Row(
                    children: [
                      const Text('From', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      const SizedBox(width: 5.0),
                      Text('\$$price/hr', style: const TextStyle(color: AppColors.purple, fontWeight: FontWeight.bold, fontSize: 13.0)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: Icon(Icons.favorite_border, color: Colors.grey, size: 20.0),
          ),
        ],
      ),
    );
  }
}
