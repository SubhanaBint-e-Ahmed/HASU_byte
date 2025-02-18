import 'package:cocoon/view/auth/login/login.dart';
import 'package:cocoon/view/auth/signup/signup_page.dart';
import 'package:cocoon/widgets/custom_rich_text.dart';
import '../../res/constants/app_colors.dart'; // Added import for AppColors
import '../../res/constants/imports.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          10.h,
          Assets.images.startImage.image(),
          30.h,
          Text('Let’s get started!', style: context.titleLarge),
          20.h,
          AppButton.outline(
            width: 300,
            background: AppColors.lightGray, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.fb),
                20.w,
                Text('Continue with Facebook', style: context.headlineMedium)
              ],
            ),
          ),
          20.h,
          AppButton.outline(
            width: 300,
            background: AppColors.lightGray, // Changed background color to light gray
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.google),
                20.w,
                Text('Continue with Google', style: context.headlineMedium)
              ],
            ),
          ),
          20.h,
          AppButton.outline(
            width: 300,
            background: AppColors.lightGray, // Changed background color to light gray
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.apple),
                20.w,
                Text('Continue with Apple', style: context.headlineMedium)
              ],
            ),
          ),
          30.h,
          Row(children: [
            Expanded(child: Divider(color: context.extraLightGrey)),
            10.w,
            Text('or', style: context.headlineMedium),
            10.w,
            Expanded(child: Divider(color: context.extraLightGrey))
          ]),
          30.h,
          AppButton.primary(
            width: 300,
            title: 'Sign in with password',
            onPressed: () => Get.to(() => const LoginPage()),
          ),
          20.h,
          CustomRichText(
            text: 'Don’t have an account?',
            highlightedText: 'Sign up',
            onTap: () => Get.to(() => const SignupPage()),
          ),
          20.h,
        ]).paddingAll(20),
      ),
    );
  }
}
