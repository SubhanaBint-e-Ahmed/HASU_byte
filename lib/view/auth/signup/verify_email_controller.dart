//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:police_jobs/core/constants/imports.dart';
// import 'package:police_jobs/core/mixins/local_storage_mixin.dart';
// import 'package:police_jobs/models/base_model.dart';
// import 'package:police_jobs/models/verification_code_model.dart';
// import 'package:police_jobs/pages/dashboard/Dashboard.dart';
//
// import '../../../core/apis/api_function.dart';
// import '../../../core/constants/urls.dart';
// import '../../../models/user_model.dart';
//
// class VerifyEmailController extends GetxController with StateMixin,LocalStorageMixin{
//
//   final bool fromLogin;
//   VerifyEmailController({this.fromLogin=false});
//   bool isSuccessful=false;
//   late String correctOtp;
//
//   bool otpMatched=false;
//   TextEditingController enteredOtpController=TextEditingController();
//
//
//   void onLetsStart(){
//     isSuccessful=false;
//     Get.offAll(()=>userData.user!.onboardingQuestions?Dashboard():GetInfoPage());
//   }
//
//    void setCorrectOtp(String value){
//     correctOtp=value;
//     update();
//    }
//
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//
//     // WidgetsBinding.instance.addPostFrameCallback((_) {
//     //   requestEmailVerification();
//     // });
//
//   }
//
//
//   Future<void> requestEmailVerification(String userId) async {
//     String key=userId;
//     final response = await apiCall(
//         POST,
//         Urls.requestVerificationEmail,
//       fromJson: VerificationCodeModel.fromJson,
//       showLoader: true,
//         {
//           "user_id": key,
//         },
//         );
//
//     if (response is VerificationCodeModel) {
//       showSuccessfulToastMessage("we sent OTP on your email");
//       correctOtp=response.verificationCode;
//       change(response, status: RxStatus.success());
//     //  storeDataLocally('isLogin', true);
//     } else {
//       change(null, status: RxStatus.empty());
//     }
//   }
//
//
//   Future<void> verifyApi() async{
//     final key=userData.userId;
//     final response = await apiCall(
//       POST,
//       Urls.verifyEmail,
//       showLoader: true,
//       {
//         "user_id": key,
//         "verificationCode": enteredOtpController.text
//       },
//     );
//     print(response);
//     if (response!=false) {
//       storeDataLocally('userData', userData);
//       isSuccessful=true;
//       update();
//       change(response, status: RxStatus.success());
//
//     } else {
//       change(null, status: RxStatus.empty());
//     }
//   }
//
//
//
//
//   void onVerifyPress()async{
//     if(correctOtp==enteredOtpController.text){
//       await verifyApi();
//     }
//     else{
//       showErrorToastMessage('kindly enter correct otp');
//     }
//   }
//
//
// }