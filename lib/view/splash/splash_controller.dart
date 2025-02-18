
import 'package:cocoon/view/welcome/welcome_view.dart';

import '../../utils/mixins/local_storage_mixin.dart';
import 'package:get/get.dart';
class SplashController extends GetxController with LocalStorageMixin {
  @override
  void onReady() async {
    Future.delayed(const Duration(milliseconds: 1500), () async {
      // UserResponseModel? userModel;
      // var data = await getLocalData('userData');
      // if (data != null) {
      //   userModel = UserResponseModel.fromJson(data);
      //   userData = userModel;
      // }
      //
      // if (userModel != null) {
      //   if (userModel.user!.onboardingQuestions) {
      //     Get.off(() => Dashboard());
      //   } else {
      //     Get.off(() => GetInfoPage());
      //   }
      // } else {
      //   Get.off(() => LoginPage());
      // }

      Get.to(()=>const WelcomeView());
    });
    super.onReady();
  }
}
