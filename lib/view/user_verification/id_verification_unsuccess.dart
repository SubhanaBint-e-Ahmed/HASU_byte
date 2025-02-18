import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/user_verification/widgets/custom_tag.dart';

class IdVerificationUnsuccess extends StatelessWidget {
  const IdVerificationUnsuccess({super.key});

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
                color: Color(0xFFFF0000),
                icon: Icons.info_outline,
                text: "ID not verified",
              ),
            ),
            70.h,
            SvgPicture.asset("assets/icons/cross.svg")
          ],
        ),
      ),
    );
  }
}
