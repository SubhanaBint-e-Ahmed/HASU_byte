import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/user_verification/point_the_camera_screen.dart';

class SetYourFingerprint extends StatelessWidget {
  const SetYourFingerprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Set Your Fingerprint",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SB.h(70),
            const Text(
              "Add a fingerprint to make your account more secure.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.black1,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SB.h(80),
            SvgPicture.asset(
              "assets/icons/thumb.svg",
              height: 200,
            ),
            70.h,
            const Text(
              "Please put your finger on the fingerprint scanner to get started.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.black1,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            71.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton.primary(
                  width: 135,
                  title: "Skip",
                  elevation: 0,
                  background: const Color(0xFFEFF6FF),
                 foregroundColor: const Color.fromARGB(255, 125, 4, 224),
                ),
                AppButton.primary(
                  width: 135,
                  onPressed: () {
                    Get.to(() => const CameraScanScreen());
                  },
                  title: "Continue",
                  elevation: 0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
