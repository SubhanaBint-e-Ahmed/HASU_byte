import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/user_verification/otp_code_verification_screen.dart';
import 'package:cocoon/view/user_verification/widgets/custom_tag.dart';

class IdVerificationSuccess extends StatefulWidget {
  const IdVerificationSuccess({super.key});

  @override
  State<IdVerificationSuccess> createState() => _IdVerificationSuccessState();
}

class _IdVerificationSuccessState extends State<IdVerificationSuccess> {
  @override
  void initState() {
    super.initState();
    ok();
  }

  void ok() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.to(() => const OtpCodeVerificationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "User ID Verification",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            136.h,
            const SizedBox(
              width: double.infinity,
              child: CustomTag(
                color: Color(0xFF07BD0E),
                icon: Icons.info_outline,
                text: "ID verified",
              ),
            ),
            70.h,
            SvgPicture.asset("assets/icons/success.svg")
          ],
        ),
      ),
    );
  }
}
