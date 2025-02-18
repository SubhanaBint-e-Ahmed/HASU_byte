import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/user_verification/widgets/custom_card.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Help",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            CustomCard(
              text: "Customer Service",
              svgIcon: "assets/icons/service.svg",
              onTap: () {},
            ),
            CustomCard(
              text: "WhatsApp",
              svgIcon: "assets/icons/whatsapp.svg",
              onTap: () {},
            ),
            CustomCard(
              text: "Website",
              svgIcon: "assets/icons/web.svg", 
              onTap: () {},
            ),
            CustomCard(
              text: "Facebook",
              svgIcon: "assets/icons/facebook.svg",
              onTap: () {},
            ),
            CustomCard(
              text: "X",
              svgIcon: "assets/icons/x.svg",
              onTap: () {},
            ),
            CustomCard(
              text: "Instagram",
              svgIcon: "assets/icons/insta.svg",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
