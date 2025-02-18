import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class DeliveryOptionsScreen extends StatefulWidget {
  const DeliveryOptionsScreen({super.key});

  @override
  _DeliveryOptionsScreenState createState() => _DeliveryOptionsScreenState();
}

class _DeliveryOptionsScreenState extends State<DeliveryOptionsScreen> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery Options",
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 21.6 / 18,
              letterSpacing: 0.0,
            ),
          ),
          const SizedBox(height: 20),
          _buildOptionCard(
            iconPath: 'assets/icons/priority.svg',
            title: 'Priority',
            description: '15-20 min',
            isSelected: selectedOption == 0,
            onTap: () {
              setState(() {
                selectedOption = 0;
              });
            },
          ),
          const SizedBox(height: 16),
          _buildOptionCard(
            iconPath: 'assets/icons/standred.svg',
            title: 'Standard',
            description: '20-30 min',
            isSelected: selectedOption == 1,
            onTap: () {
              setState(() {
                selectedOption = 1;
              });
            },
          ),
          const SizedBox(height: 16),
          _buildOptionCard(
            iconPath: 'assets/icons/schedule.svg',
            title: 'Schedule',
            description: 'Select a time',
            isSelected: selectedOption == 2,
            onTap: () {
              setState(() {
                selectedOption = 2;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard({
    required String iconPath,
    required String title,
    required String description,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 380,
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.purple : const Color(0xFFEEEEEE),
            width: 2,
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 50, 
              height: 50,
             // colorFilter: const ColorFilter.mode(AppColors.purple, BlendMode.srcIn),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 21.6 / 18,
              letterSpacing: 0.0,
            ),
                ),
                Text(
                  description,
                  style: const TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              height: 21.6 / 18,
              letterSpacing: 0.0,
              color: Colors.grey,
            ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
