import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/pickup.dart';

class OrderOptions extends StatelessWidget {
  const OrderOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 52,
      padding: const EdgeInsets.all(5),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 116,
            height: 48,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFFEEEEEE),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/Chips.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {    Get.to(() => const PickupScreen());},
                  child: SvgPicture.asset(
                    'assets/icons/Pickup.svg',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 4),
          Container(
            width: 50,
            height: 20,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: Colors.transparent.withOpacity(0.0),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  '4.3',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 19.6 / 14,
                    letterSpacing: 0.2,
                    color: AppColors.purple,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 149,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xFFEEEEEE),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/Add User.svg',
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Group Order',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
