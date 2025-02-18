// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
//
// import '../../../core/apis/api_function.dart';
// import '../../../core/constants/urls.dart';
// import '../../../core/mixins/local_storage_mixin.dart';
// import '../../../models/user_model.dart';
// import '../signup/signup_page.dart';
//
// class LoginController extends GetxController with  StateMixin<UserResponseModel>{
//   TextEditingController tfEmail = TextEditingController(),
//       tfPassword = TextEditingController();
//
//   final formKey=GlobalKey<FormState>();
//
//   void signUp() {
//     Get.to(() => SignupPage());
//   }
//   //
//   // void onLogin() async{
//   //   if(formKey.currentState!.validate()){
//   //     await loginApi();
//   //   }
//   // }
//   //
//   //
//   //
//   // Future<void> loginApi() async {
//   //   final response = await apiCall(
//   //       POST,
//   //       Urls.login,
//   //       {
//   //         "email": tfEmail.text.toString(),
//   //         "password": tfPassword.text.toString()
//   //       },
//   //       showLoader: true,
//   //       fromJson: UserResponseModel.fromJson);
//   //
//   //   if (response is UserResponseModel) {
//   //     print('Successful       ******************* ${response.user}');
//   //
//   //
//   //     var data=response.toJson();
//   //     UserResponseModel userModel=UserResponseModel.fromJson(data);
//   //     userData=userModel;
//   //
//   //     if(response.user!.verifiedUser==false){
//   //       showErrorToastMessage('Your email not verified kindly verify');
//   //       userData=response;
//   //     await  Get.put(VerifyEmailController(fromLogin: true,)).requestEmailVerification(response.userId);
//   //       Get.bottomSheet(
//   //           isDismissible: false,
//   //           isScrollControlled: true,
//   //           VerifyBottomSheet(user_id: response.userId,));
//   //       return;
//   //     }
//   //
//   //
//   //     if(response.user!.onboardingQuestions==false){
//   //       Get.to(()=>GetInfoPage());
//   //       return;
//   //     }
//   //      storeDataLocally('userData',userData);
//   //      Get.offAll(() => Dashboard());
//   //
//   //   } else {
//   //     showErrorToastMessage('There is some error try again');
//   //   }
//   // }
//
//
// }
