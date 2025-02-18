import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/auth/login/login.dart';
import 'package:cocoon/view/user_verification/widgets/custom_dialog.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Create New Password",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/rpy.png"),
              60.h,
              const Text(
                "Create Your New Password",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.black1,
                  fontSize: 18,
                ),
              ),
              34.h,
              CustomTextField(
                prefixIcon: Assets.icons.lock,
                hintText: "Confirm password",
                isPasswordField: true,
              ),
              CustomTextField(
                prefixIcon: Assets.icons.lock,
                hintText: "Confirm password",
                isPasswordField: true,
              ),
              20.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  7.w,
                  Text(
                    'Remember me',
                    style: context.headlineMedium,
                  )
                ],
              ),
              20.h,
              Center(
                child: AppButton.primary(
                  title: "Continue",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomDialog(
                          title: "Congratulations",
                          description:
                              "Your profile is set up.You will be redirected to the Home page or add your service(s)",
                          onTap: () {
                            Get.to(()=>const LoginPage());
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
