// import 'dart:developer';
// import 'dart:io';
//
// // import 'package:firebase_messaging/firebase_messaging.dart';
// //import 'package:google_sign_in/google_sign_in.dart';
//
// // import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//
//
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// import '../../res/constants/imports.dart';
// import '../../gen/assets.gen.dart';
// import '../../widgets/custom_loader.dart';
//
//
// mixin SocialSignIn {
//  final GoogleSignIn _googleSignIn = GoogleSignIn(
//    scopes: ['email'],
//  );
//
//   //final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
//   String? _fcmToken;
//
//   Widget socialButton(BuildContext context, bool isSignIN) => Column(
//         children: [
//           AppButton.outline(
//
//             background: context.onPrimary,
//             borderColor: context.primary,
//             // borderRadius: BorderRadius.circular(10),
//                      //  onPressed: _signInWithGoogle,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Assets.icons.googelIcon.svg(),
//                 SB.w(10),
//                 Text(
//                   'Continue with Google',
//                   style: context.titleMedium?.copyWith(
//                       color: context.primary,
//                       ),
//                 ),
//               ],
//             ),
//           ),
//          // if (Platform.isIOS)
//             SB.h(15),
//         //  if (Platform.isIOS)
//             AppButton.outline(
//               background: context.onPrimary,
//               borderColor: context.primary,
//               // borderRadius: BorderRadius.circular(10),
//               //onPressed: _signInWithFacebook,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Assets.icons.appleIcon.svg(),
//                   SB.w(10),
//                   Text(
//                     'Continue with Apple',
//                     style: context.titleMedium?.copyWith(
//                          color: context.primary,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//           // if (Platform.isIOS) ...[
//           //   SB.h(10),
//           //   AppButton.primary(
//           //     background: context.scaffoldBackgroundColor,
//           //     onPressed: _signInWithApple,
//           //     child: Row(
//           //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //       children: [
//           //         Assets.icons.apple.svg(),
//           //         Text(
//           //           'Continue with apple',
//           //           style: context.titleMedium?.copyWith(
//           //             color: context.onPrimary,
//           //           ),
//           //         ),
//           //         const SizedBox(),
//           //       ],
//           //     ),
//           //   ),
//           // ]
//         ],
//       );
//
//   // Future<void> _signInWithGoogle() async {
//   //    Get.dialog(const CustomLoader());
//   //    await _googleSignIn.signOut();
//   //   try {
//   //
//   //     final GoogleSignInAccount? credential = await _googleSignIn.signIn();
//   //    print(credential);
//   //     if (credential != null) {
//   //       String? fullName =credential.displayName;
//   //       List<String>? nameParts =await fullName?.trim().split(RegExp(r'\s+'));
//   //       String firstName =await nameParts!.isNotEmpty ? nameParts.first : '';
//   //       String lastName =await nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';
//   //       print('$firstName  $lastName');
//   //
//   //
//   //
//   //
//   //
//   //         final response = await apiCall(POST, 'signin_3rd_party', {
//   //             "email": credential.email,
//   //             "fname": firstName,
//   //             "lname":lastName,
//   //             "profilePic": credential.photoUrl,
//   //             "google_id": credential.id,
//   //         },
//   //         fromJson: UserResponseModel.fromJson,    showLoader: false, );
//   //
//   //         if (response is UserResponseModel) {
//   //
//   //           userData=response;
//   //          await storageBox.write('userData', userData);
//   //           if(userData.user!.onboardingQuestions==false){
//   //             Get.offAll(()=>GetInfoPage());
//   //           }
//   //           else{
//   //             Get.offAll(()=>Dashboard());
//   //           }
//   //
//   //         } else {
//   //           showErrorToastMessage('There is some error try again');
//   //
//   //         }
//   //
//   //
//   //       // _signInWithAPIs(await _createDataMap(
//   //       //   name: credential.displayName,
//   //       //   email: credential.email,
//   //       //   type: 'google',
//   //       // ));
//   //       _googleSignIn.signOut();
//   //     }
//   //     Get.back();
//   //
//   //     log(credential.toString());
//   //   } catch (error) {
//   //     print(error);
//   //     Get.back();
//   //   }
//   // }
//
//   // Future<void> _signInWithFacebook() async {
//   //   Map<String, dynamic>? userData;
//   //   AccessToken? accessToken;
//   //   final LoginResult result = await FacebookAuth.instance
//   //       .login(); // by default we request the email and the public profile
//   //
//   //   // loginBehavior is only supported for Android devices, for ios it will be ignored
//   //   // final result = await FacebookAuth.instance.login(
//   //   //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
//   //   //   loginBehavior: LoginBehavior
//   //   //       .DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
//   //   // );
//   //
//   //   if (result.status == LoginStatus.success) {
//   //     accessToken = result.accessToken;
//   //
//   //     // get the user data
//   //     // by default we get the userId, email,name and picture
//   //     final data = await FacebookAuth.instance.getUserData();
//   //     // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
//   //     userData = data;
//   //
//   //     if (userData != null) {
//   //       _signInWithAPIs(await _createDataMap(
//   //         name: userData['name'],
//   //         email: userData['email'],
//   //         type: 'facebook',
//   //       ));
//   //     }
//   //   } else {
//   //     print(result.status);
//   //     print(result.message);
//   //   }
//   // }
//
//
//   // Future<void> _signInWithApple() async {
//   //   Get.dialog(const CustomLoader());
//   //   try {
//   //     final credential = await SignInWithApple.getAppleIDCredential(
//   //       scopes: [
//   //         AppleIDAuthorizationScopes.email,
//   //         AppleIDAuthorizationScopes.fullName,
//   //       ],
//   //     );
//   //
//   //     print(credential);
//   //
//   //     String? fullName =credential.givenName;
//   //     List<String>? nameParts =await fullName?.trim().split(RegExp(r'\s+'));
//   //     String firstName =await nameParts!.isNotEmpty ? nameParts.first : '';
//   //     String lastName =await nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';
//   //     print('$firstName  $lastName');
//   //
//   //
//   //     final response = await apiCall(POST, 'signin_3rd_party', {
//   //       "email": credential.email,
//   //       "fname": firstName,
//   //       "lname":lastName,
//   //       //"profilePic": credential.,
//   //       "apple_id": credential.identityToken,
//   //     },
//   //       fromJson: UserResponseModel.fromJson,    showLoader: false, );
//   //
//   //     if (response is UserResponseModel) {
//   //
//   //       userData=response;
//   //       await storageBox.write('userData', userData);
//   //       if(userData.user!.onboardingQuestions==false){
//   //         Get.offAll(()=>GetInfoPage());
//   //       }
//   //       else{
//   //         Get.offAll(()=>Dashboard());
//   //       }
//   //
//   //
//   //     } else {
//   //       showErrorToastMessage('There is some error try again');
//   //
//   //     }
//   //
//   //     Get.back();
//   //   } catch (error) {
//   //     print(error);
//   //     Get.back();
//   //   }
//   // }
//
//   // Future<void> _signInWithAPIs(Map<String, String?> data) async {
//   //   final UserModel? loginResponse = await apiCall(
//   //     POST,
//   //     Urls.socialLogin,
//   //     data,
//   //     fromJson: UserModel.fromJson,
//   //     showLoader: false,
//   //   );
//   //    if(loginResponse!=null){
//   //      userData = loginResponse;
//   //      storageBox.write(AppKeys.userData, userData.toJson());
//   //      Get.offAll(() => const Dashboard());
//   //    }
//   // }
//
//   Future<Map<String, String?>> _createDataMap(
//           {String? name,
//           String? email,
//           required String type,
//           String? id}) async =>
//       {
//         if (id != null) 'apple_id': id,
//         'name': name,
//         if (email != null) 'email': email,
//         'type': type,
//         // 'fcm_token': await _firebaseMessaging.getToken(),
//       };
// }
