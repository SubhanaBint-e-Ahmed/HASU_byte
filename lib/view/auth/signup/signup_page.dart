import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/add_profile_details/add_profile_details_view.dart';
import 'package:cocoon/view/auth/login/login.dart';
import 'package:cocoon/view_models/models/welcome_view_model/signup_view_model.dart';
import '../../../widgets/custom_rich_text.dart';

class SignupPage extends StatelessWidget with Validators {
  const SignupPage({super.key});

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
                    'Create New Account',
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
                  SB.h(context.height * 0.02),
                  CustomTextField(
                    prefixIcon: Assets.icons.lock,
                    hintText: "Confirm password",
                    isPasswordField: true,
                    //   validator: (v) =>
                    //     validateConfirmPassword(
                    //         controller.tfPassword.text, v),
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

                    title: "Sign up",
                    elevation: 5,
                    onPressed: ()=>Get.to(()=>const AddProfileDetailsView()),
                  ),
                  30.h,
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
                  30.h,
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
                    text: 'Already have an account?',
                    highlightedText: 'Sign in',
                    onTap: ()=>Get.to(()=>const LoginPage()),
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
