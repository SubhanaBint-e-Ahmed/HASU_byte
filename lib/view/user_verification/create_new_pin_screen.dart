import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/user_verification/set_your_fingerprint.dart';
import 'package:pinput/pinput.dart';

class CreateNewPinScreen extends StatelessWidget {
  const CreateNewPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 83,
      height: 61,
      // padding: EdgeInsets.all(20),
      textStyle: const TextStyle(fontSize: 31),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF4FF),
        border: Border.all(color: const Color(0xFFEEEEEE)),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final focusPinTheme = PinTheme(
      width: 83,
      height: 61,
      // padding: EdgeInsets.all(20),
      textStyle: const TextStyle(fontSize: 31),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF4FF),
        border: Border.all(color: AppColors.purple),
        borderRadius: BorderRadius.circular(16),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Create New PIN",
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
            SB.h(120),
            const Text(
              "Add a PIN number to make your account more secure.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.black1,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SB.h(80),
            Pinput(
              onTapOutside: (_) {
                FocusScope.of(context).unfocus();
              },
              length: 4,
              defaultPinTheme: defaultPinTheme,
              // validator: (s) {},
              focusedPinTheme: focusPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            100.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               /* AppButton.primary(
                  width: 135,
                  title: "Skip",
                  elevation: 0,
                  background: const Color(0xFFEFF6FF),
                  foregroundColor: AppColors.purple,
                ),*/
                AppButton.primary(
                  //width: 180,
                  title: "Continue",
                  onPressed: () {
                    Get.to(() => const SetYourFingerprint());
                  },
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
