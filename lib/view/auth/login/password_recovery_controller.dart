//
//
// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:police_jobs/core/constants/imports.dart';
// import 'package:police_jobs/core/mixins/local_storage_mixin.dart';
//
// import '../../../core/apis/api_function.dart';
// import '../../../core/constants/urls.dart';
// import '../../../models/verification_code_model.dart';
//
// class PasswordRecoveryController extends GetxController with StateMixin ,LocalStorageMixin{
//   Rx<Color> verifyEmailButtonColor=Color(0xffced7de).obs ;
//   Rx<Color> verifyPasswordButtonColor=Color(0xffced7de).obs;
//   TextEditingController tfEmailController=TextEditingController(),otpController=TextEditingController(),tfPassword=TextEditingController();
//
//
//   final formKey1=GlobalKey<FormState>();
//   final formKey2=GlobalKey<FormState>();
//
//   int index =0;
//   late String correctOtp;
//
//   Future<void> requestEmailOtp() async {
//     final response = await apiCall(
//       POST,
//       Urls.requestVerificationEmail,
//       fromJson: VerificationCodeModel.fromJson,
//       showLoader: true,
//       {
//         "user_id": tfEmailController.text,
//       },
//     );
//
//     if (response is VerificationCodeModel) {
//       if(response.verificationCode==0){
//        showErrorToastMessage('Enter correct Email');
//         return;
//       }
//       correctOtp=response.verificationCode;
//       print('$correctOtp' + '            ooooooooooooooooooooooooooooooooooooo');
//       setPageIndex(1);
//       change(response, status: RxStatus.success());
//       update();
//       //  storeDataLocally('isLogin', true);
//     } else {
//       showSnackBar('There is some error');
//       change(null, status: RxStatus.empty());
//     }
//   }
//
//
//   Future<void> verifyPasswordAPi() async {
//     final response = await apiCall(
//       POST,
//       Urls.forgetPassword,
//       fromJson: UserResponseModel.fromJson,
//       showLoader: true,
//       {
//       "email": tfEmailController.text,
//       "newPassword": tfPassword.text
//       },
//     );
//
//     if (response is UserResponseModel) {
//       setPageIndex(3);
//       change(response, status: RxStatus.success());
//       update();
//     } else {
//       showSnackBar('There is some error');
//       change(null, status: RxStatus.empty());
//     }
//   }
//
//
//
//   void setPageIndex(int value){
//     index=value;
//     update();
//   }
//   void onTextFiledChange(String? v){
//     bool isValid=formKey1.currentState!.validate();
//     if(isValid){
//       verifyEmailButtonColor.value=Get.context!.primary;
//
//     }
//     else{
//       verifyEmailButtonColor.value=Color(0xffced7de);
//
//     }
//   }
//   void onLetsStart(){
//     index=0;
//     Get.back();
//   }
//   void onPasswordTextFiledChange(v){
//     bool isValid=formKey2.currentState!.validate();
//     if(isValid){
//      verifyPasswordButtonColor.value=Get.context!.primary;
//     }
//     else{
//       verifyPasswordButtonColor.value=Color(0xffced7de);
//     }
//   }
//
//
//
//   void onVerifyEmailPress()async{
//     if(formKey1.currentState!.validate()){
//       await requestEmailOtp();
//     }
//   }
//
//
//
//   // Future<void> requestEmailOtp() async {
//   //   final key=await getLocalData('user_id');
//   //   final response = await apiCall(
//   //     POST,
//   //     Urls.requestVerificationEmail,
//   //     fromJson: VerificationCodeModel.fromJson,
//   //     showLoader: true,
//   //     {
//   //       "user_id": tfEmailController.text,
//   //     },
//   //   );
//   //
//   //   if (response is VerificationCodeModel) {
//   //     correctOtp=response.verificationCode;
//   //     setPageIndex(1);
//   //     change(response, status: RxStatus.success());
//   //     update();
//   //     //  storeDataLocally('isLogin', true);
//   //   } else {
//   //     showSnackBar('There is some error');
//   //     change(null, status: RxStatus.empty());
//   //   }
//   // }
//
//
//   void onVerifyOtpPress()async{
//     if(otpController.text.length>3){
//       //todo: change later
//       if (correctOtp == otpController.text) {
//        setPageIndex(2);
//       }
//       else{
//         showErrorToastMessage('Kindly Enter Correct OTP');
//       }
//     }
//   }
//
//
//   void onVerifyPassword()async{
//     if(formKey2.currentState!.validate()){
//      await  verifyPasswordAPi();
//     }
//
//   }
//
//
//
// }