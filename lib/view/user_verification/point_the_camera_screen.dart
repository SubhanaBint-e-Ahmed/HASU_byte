import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/user_verification/help_screen.dart';
import 'package:cocoon/view/user_verification/id_verification_success.dart';
import 'package:cocoon/view/user_verification/id_verification_unsuccess.dart';

class CameraScanScreen extends StatelessWidget {
  const CameraScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed:()=>Get.to(()=>const HelpScreen()),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Point the Camera',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Scan ID Card, Driving License or Passport',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/card3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    heroTag: "1",
                    shape: const CircleBorder(),
                    onPressed: () {
                      Get.to(() => const HelpScreen());
                    },
                    backgroundColor: Colors.grey[300],
                    child: SvgPicture.asset("assets/icons/image.svg",color: AppColors.purple,),
                  ),
                  SizedBox(
                    height: 80.0,
                    width: 80.0,
                    child: FloatingActionButton(
                      heroTag: "2",
                      onPressed: () {
                        Get.to(() => const IdVerificationSuccess());
                      },
                      shape: const CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 153, 0, 255),
                      child: SvgPicture.asset("assets/icons/scan.svg"),
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "3",
                    onPressed: () {
                      Get.to(() => const IdVerificationUnsuccess());
                    },
                    shape: const CircleBorder(),
                    backgroundColor: Colors.grey[300],
                    child: SvgPicture.asset("assets/icons/folder.svg",color: AppColors.purple,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
