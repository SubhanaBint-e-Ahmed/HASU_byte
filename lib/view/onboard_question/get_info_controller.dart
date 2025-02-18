
import 'package:cocoon/view/user_verification/widgets/custom_dialog.dart';

import 'package:cocoon/res/constants/imports.dart';

import '../../widgets/custom_drop_down.dart';
import '../user_verification/create_new_pin_screen.dart';

class GetInfoController extends GetxController with LocalStorageMixin {
  DropDownItemModel? selectedState;
  DropDownItemModel? selectedCity;
 final bool forEdit;
  GetInfoController({this.forEdit=false});
  final int animationDuration = 500;
  final PageController pageViewController = PageController();
  DropDownItemModel? selectedDropDownValue;
  String? radioSelectedValue;
  int pageViewIndex = 0;
  TextEditingController tfPlaceName = TextEditingController();
  List<DropDownItemModel> locationsStatesList = [];
  List<DropDownItemModel> locationCitiesList = [];

  String? selectedValueDescribeYou= 'Businessman';
  String? selectedValueGender= 'Male';


  void setSelectValueDescribeYou(String s) {
    selectedValueDescribeYou= s;
    update();
  }


  void setSelectValueGender(String s) {
    selectedValueGender= s;
    update();
  }
  void incrementPageViewIndex() {
      if (pageViewIndex < 2) {
        pageViewIndex++;
        pageViewController.animateToPage(
          pageViewIndex,
          duration: Duration(milliseconds: animationDuration),
          curve: Curves.easeInOut,
        );
        update();
      } else {
        showDialog(
          context: Get.context!,
          builder: (context) {
            return CustomDialog(
              title: "Congratulations",
              description:
              "Your profile is set up.You will be redirected to the Home page or add your service(s)",
              onTap: () {
                    Get.to(()=>const CreateNewPinScreen());
              },
            );
          },
        );
      }

  }

  void decrementPageViewIndex() {
    if (pageViewIndex > 0) {
      pageViewIndex--;
      pageViewController.animateToPage(
        pageViewIndex,
        duration: Duration(milliseconds: animationDuration),
        curve: Curves.easeInOut,
      );
      update();
    }
  }



  double get getInfoProgress => (pageViewIndex / (3))+0.33;



}
