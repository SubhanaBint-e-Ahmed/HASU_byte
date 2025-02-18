import 'package:get/get.dart';
import 'package:cocoon/widgets/custom_drop_down.dart';

class GenderDropDownController extends GetxController {
  DropDownItemModel? selectedGender;
  List<DropDownItemModel> genderList = [
    DropDownItemModel(name: 'Male'),
    DropDownItemModel(name: 'Female'),
  ];

  void setSelectedGender(DropDownItemModel gender) {
    selectedGender = gender;
    update(); 
  }
}
