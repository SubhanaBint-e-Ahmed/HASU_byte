import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/auth/signup/signup_page.dart';
import 'package:cocoon/view/forgot_and_reset_password/reset_password_screen.dart';
import 'package:cocoon/view_models/models/welcome_view_model/signup_view_model.dart';
import '../../../widgets/custom_rich_text.dart';

class LoginPage extends StatelessWidget with Validators {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpViewModel>(
      init: SignUpViewModel(),
      builder: (controller) {
        return Scaffold(
          appBar: const SimpleAppBar(),
          body: SingleChildScrollView(
            child: Form(
              //  key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.h,
                  SvgPicture.asset(Assets.icons.logo),
                  SB.h(context.height * 0.04),
                  Text(
                    'Login to Your Account',
                    style: context.titleMedium!.copyWith(),
                  ),
                  SB.h(context.height * 0.03),
                  CustomTextField(
                    prefixIcon: Assets.icons.message,
                    hintText: "Email",
                    validator: validateEmail,
                    //      controller: controller.tfEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SB.h(context.height * 0.02),
                  CustomTextField(
                    prefixIcon: Assets.icons.lock,
                    hintText: "password",
                    validator: validatePassword,
                    isPasswordField: true,
                    //controller: controller.tfPassword,
                  ),

                  20.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: false, onChanged: (v) {}),
                      7.w,
                      Text(
                        'Remember me',
                        style: context.headlineMedium,
                      )
                    ],
                  ),
                  20.h,

                  AppButton.primary(
                    title: "Sign in",
                    elevation: 5,
                    //onPressed: controller.onSingUp,
                  ),
                  14.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>const ResetPasswordScreen()),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                        child: Text('Forgot the password?',style: context.bodyLarge!.copyWith(color: context.primary,fontWeight: FontWeight.bold),)),
                  ),
                  14.h,

                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                            color: context.extraLightGrey,
                          )),
                      10.w,
                      Text(
                        'or continue with',
                        style: context.headlineMedium,
                      ),
                      10.w,
                      Expanded(
                          child: Divider(
                            color: context.extraLightGrey,
                          ))
                    ],
                  ),
                  20.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppButton.outline(
                        width: 90,
                        child: SvgPicture.asset(
                          Assets.icons.fb,
                        ),
                      ),
                      AppButton.outline(
                        width: 90,
                        child: SvgPicture.asset(
                          Assets.icons.google,
                        ),
                      ),
                      AppButton.outline(
                        width: 90,
                        child: SvgPicture.asset(
                          Assets.icons.apple,
                        ),
                      ),
                    ],
                  ),
                  20.h,
                  CustomRichText(
                    text: 'Don’t have an account?',
                    highlightedText: 'Sign up',
                    onTap: ()=>Get.to(()=>const SignupPage()),
                  ),
                  20.h,
                ],
              ).paddingSymmetric(horizontal: 20),
            ),
          ),
        );
      },
    );
  }
}
