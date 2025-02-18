import 'dart:io';
import 'package:get/get.dart';
import '../../../utils/mixins/image_picker_mixin.dart';
import '../../../widgets/image_option.dart';

class SignUpViewModel extends GetxController with ImagePickerMixin {
  File? imgFile;
  String? selectedGender;
  String? country;
  DateTime? dateOfBirth;

  // Define the gender items as a list of strings
  final List<String> genderItems = ['Male', 'Female'];

  void setImageFile() async {
    bool? isCamera = await ImageOption.show(Get.context!);
    if (isCamera != null) {
      imgFile = await pickImage(isCamera: isCamera);
      update();
    }
  }

  void setGender(String? gender) {
    selectedGender = gender;
    update(); // Notify listeners
  }

  void setCountry(String? newCountry) {
    country = newCountry;
    update(); // Notify listeners
  }

  void setDateOfBirth(DateTime newDateOfBirth) {
    dateOfBirth = newDateOfBirth;
    update(); // Notify listeners
  }
}
