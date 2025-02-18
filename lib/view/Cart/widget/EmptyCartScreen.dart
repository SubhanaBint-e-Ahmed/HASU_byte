import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';


class EmptyCartScreen extends StatelessWidget {
  final VoidCallback onIconTap;  

  const EmptyCartScreen({super.key, required this.onIconTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onIconTap,  
            child: SizedBox(
              width: 170,
              height: 170,
              child: SvgPicture.asset("assets/icons/emp.svg"),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 380,
            height: 85,
            alignment: Alignment.center,
            child: const Column(
              children: [
                Text(
                  "Empty List",
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    height: 28.8 / 24,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 380,
                  height: 44,
                  child: Text(
                    "Looks like you don't have any order in progress. Search for services by clicking the button below.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 22.4 / 16,
                      letterSpacing: 0.2,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            onPressed: onIconTap,  
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(218, 255, 255, 255),
              foregroundColor: AppColors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              fixedSize: const Size(250, 58),
            ),
            child: const Text(
              "Search now",
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 22.4 / 16,
                letterSpacing: 0.2,
                color: AppColors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
