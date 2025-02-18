import 'package:cocoon/res/constants/imports.dart';

class InboxController extends GetxController{
  String selectedValue='All';
  List<String> status=['All','Read','Unread'];

  void setStatusValue(String v){
    selectedValue=v;
    update();
  }
}