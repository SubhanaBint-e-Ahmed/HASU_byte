import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/done_dialog.dart';
import 'package:cocoon/view/home/widgets/purpose_bottom_sheet.dart';

class ProposingYourOfferScreen extends StatelessWidget {
  const ProposingYourOfferScreen({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Proposing your offer",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Set your budget",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.black1,
              ),
            ),
            20.h,
            const CustomTextField(
              prefixIcon: "assets/icons/money.svg",
              hintText: "\$ 10.7",
            ),
            20.h,
            const Text(
              "Message",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.black1,
              ),
            ),
            20.h,
            const CustomTextField(
              maxLines: 5,
              hintText: "Placeholder",
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: AppButton.primary(
                width: 170,
                onPressed: () {
                  showModalBottomSheet(
                    context: ctx,
                    isScrollControlled: false,
                    backgroundColor: Colors.transparent,
                    builder: (context) => PurposeBottomSheet(
                      onTap: () {
                        Get.back();
                        showModalBottomSheet(
                          context: ctx,
                          isScrollControlled: false,
                          backgroundColor: Colors.transparent,
                          builder: (context) => DoneDialog(
                            title: "Done",
                            description: "Your offering is proposed.",
                            onTap: () {},
                          ),
                        );
                      },
                    ),
                  );
                },
                title: "Propose",
                elevation: 0,
                textColor: Colors.white,
                height: 45,
                background: AppColors.p1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
