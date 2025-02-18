import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/forgot_and_reset_password/otp_code_verification_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Reset Password",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.black1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset('assets/images/rp.png'),
              ),
              const SizedBox(height: 40),
              const Text(
                "Select which contact details should we use to reset your password",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black1,
                ),
              ),
              const SizedBox(height: 24),
              ContactOptionCard(
                icon: "assets/icons/sms.svg",
                title: "via SMS:",
                subtitle: "+1 111 ******99",
                onTap: () {
                  Get.to(() => const OtpCodeVerificationScreenn());
                },
                isSelected: true,
              ),
              const SizedBox(height: 16),
              ContactOptionCard(
                icon: "assets/icons/email.svg",
                title: "via Email:",
                subtitle: "jo***e@domain.com",
                onTap: () {},
                isSelected: false,
              ),
              const SizedBox(height: 46),
              Center(
                child: AppButton.primary(
                  width: 190,
                  onPressed: () {
                    Get.to(() => const OtpCodeVerificationScreenn());
                  },
                  title: "Continue",
                  elevation: 0,
                  background: AppColors.purple,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactOptionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isSelected;

  const ContactOptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            strokeAlign: 2,
            width: 2,
            color: isSelected ? AppColors.purple : const Color(0xFFeeeeee),
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.purple.withOpacity(0.1),
              child: SvgPicture.asset(icon),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF757575),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.black1,
                      fontWeight: FontWeight.w700,
                    ),
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
