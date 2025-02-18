// import 'dart:convert';
// import 'dart:io';
//
//
// import 'package:intl/intl.dart';
//
// import '../../../core/constants/imports.dart';
// import '../../../widgets/image_option.dart';
//
// class SignupController extends GetxController {
//   var base64Image;
//   File? imgFile;
//   String? imgUrl;
//   DateTime? date18YearsAgo;
//   // DateRangePickerController dateRangePickerController =
//   //     DateRangePickerController();
//   TextEditingController tfEmail = TextEditingController(),
//       tfPassword = TextEditingController(),
//       tfName = TextEditingController(),
//       tfLastName = TextEditingController(),
//       tfDateMonth = TextEditingController(),
//       tfDateDay = TextEditingController(),
//       tfDateYear = TextEditingController(),
//       tfConfirmEmail = TextEditingController(),
//       tfCreatePassword = TextEditingController(),
//       tfConfirmPassword = TextEditingController(),
//       tfInstagram = TextEditingController(),
//       tfX = TextEditingController(),
//       tfYoutube = TextEditingController(),
//       tfTiktok = TextEditingController();
//
//   final formKey = GlobalKey<FormState>();
//
//   //
//   // void setImageFile() async {
//   //   bool? isCamera = await ImageOption.show(Get.context!);
//   //   if (isCamera != null) {
//   //     imgFile = await pickImage(isCamera: isCamera);
//   //     update();
//   //     if (imgFile != null) {
//   //       print('${imgFile!.path}         OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO');
//   //
//   //       // Read the file as bytes
//   //       var imageBytes = await imgFile!.readAsBytes();
//   //
//   //       // Encode the bytes to base64
//   //       base64Image = base64Encode(imageBytes);
//   //       print(base64Image);
//   //
//   //       // Upload the file
//   //
//   //     }
//   //   }
//   // }
//   //
//   // Future<void> uploadFileApi() async {
//   //   if (base64Image == null) {
//   //     showErrorToastMessage('Kindly Select Image Again');
//   //     return;
//   //   }
//   //   final response = await apiCall(
//   //     POST,
//   //     Urls.uploadFile,
//   //     {"file": base64Image, "file_name": "file.jpg"},
//   //     showLoader: true,
//   //   );
//   //   print(response);
//   //   if (response != null) {
//   //     imgUrl = response["url"];
//   //     print(response);
//   //     print('[[]]]p][p[p]p[]p][p][p][p[]p][p]]]');
//   //   } else {
//   //     showErrorToastMessage('Try again there is some error');
//   //   }
//   // }
//   //
//   //  @override
//   // void onInit() {
//   //   // TODO: implement onInit
//   //   super.onInit();
//   //   DateTime dateTime = DateTime.now(); // Current date and time
//   //    date18YearsAgo = dateTime.subtract(Duration(days: (18 * 365)+6));
//   // }
//   //
//   //
//   // Future<void> signUpApi() async {
//   //   final response = await apiCall(
//   //       POST,
//   //       Urls.signUp,
//   //       {
//   //         "email": tfEmail.text,
//   //         "password": tfPassword.text,
//   //         "dateOfBirth": dateRangePickerController.selectedDate!.toIso8601String() ,
//   //         "fname": tfName.text,
//   //         "lname": tfLastName.text,
//   //         "profilePic": imgUrl,
//   //         "social_x": tfX.text,
//   //         "social_instagram": tfInstagram.text,
//   //         "social_tiktok": tfTiktok.text,
//   //         "social_youtube": tfYoutube.text
//   //       },
//   //       showLoader: true,
//   //       fromJson: UserResponseModel.fromJson);
//   //   if (response is UserResponseModel) {
//   //     var data = response.toJson();
//   //     UserResponseModel userModel = UserResponseModel.fromJson(data);
//   //     userData = userModel;
//   //
//   //     print('Successful       *******************');
//   //     Get.put(VerifyEmailController())
//   //         .setCorrectOtp(response.user!.verificationCode);
//   //     Get.bottomSheet(
//   //         isDismissible: false,
//   //         isScrollControlled: true,
//   //         VerifyBottomSheet(
//   //           user_id: response.userId,
//   //         ));
//   //   } else {
//   //     showSnackBar('Try again there is some error');
//   //   }
//   // }
//   //
//   // void onSingUp() async {
//   //   if (imgFile == null) {
//   //     showSnackBar('Please upload image');
//   //     return;
//   //   }
//   //   if(base64Image!=null){
//   //     await uploadFileApi();
//   //   }
//   //
//   //   if (formKey.currentState!.validate()) {
//   //     await signUpApi();
//   //   }
//   // }
//   //
//   // void onDatePress(BuildContext context) {
//   //   showDialog<Widget>(
//   //     context: context,
//   //     builder: (BuildContext context) {
//   //       return Dialog(
//   //         child: SizedBox(
//   //           height: context.height*0.5,
//   //           width:context.width*0.8,
//   //           child: SfDateRangePicker(
//   //             maxDate:date18YearsAgo,
//   //             controller: dateRangePickerController,
//   //             showActionButtons: true,
//   //             initialSelectedDate: date18YearsAgo,
//   //             onSubmit: (Object? value) {
//   //               DateTime dateTime = dateRangePickerController.selectedDate!;
//   //               tfDateYear.text = dateTime.year.toString();
//   //               tfDateMonth.text = DateFormat('MMMM').format(dateTime);
//   //               tfDateDay.text = dateTime.day.toString();
//   //               Navigator.pop(context);
//   //             },
//   //             onCancel: () {
//   //               Navigator.pop(context);
//   //             },
//   //           ),
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
// }
