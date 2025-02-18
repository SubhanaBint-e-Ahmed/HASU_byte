import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/forgot_and_reset_password/create_new_password_screen.dart';
import 'package:pinput/pinput.dart';

class OtpCodeVerificationScreenn extends StatelessWidget {
  const OtpCodeVerificationScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 83,
      height: 61,
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
        border: Border.all(color:AppColors.purple),
        borderRadius: BorderRadius.circular(16),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "OTP Code Verification",
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
            SB.h(87),
            const Text(
              "Code has been send to +1 111 ******99",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.black1,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SB.h(60),
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
            50.h,
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Resend code in ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black1,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: "55 ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.purple,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: "s",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black1,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            100.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton.primary(
                  width: 170,
                  onPressed: () {
                    Get.to(() => const CreateNewPasswordScreen());
                  },
                  title: "Verify",
                  elevation: 0,
                  background: AppColors.purple,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
