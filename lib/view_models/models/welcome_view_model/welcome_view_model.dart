import 'package:cocoon/res/constants/imports.dart';


class WelcomeController extends GetxController{

  int pageViewIndex = 0;
  List<WelcomeBoardModel> onBoardData = [
    WelcomeBoardModel(
        title: "Find your customers",
        text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        imagePath: Assets.images.w1.path),
    WelcomeBoardModel(
        title: 'Do you have shoe repair service?',
text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",        imagePath: Assets.images.w2.path),
    WelcomeBoardModel(title: "Earn money with us!",text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", imagePath: Assets.images.w3.path,),

  ];

  final PageController pageViewController = PageController();


  void onPageChange(int value){
    pageViewIndex=value;
    update();
  }

}


class WelcomeBoardModel {
  String title;
  String text;
  String imagePath;

  WelcomeBoardModel(
      {required this.title, required this.imagePath,required this.text});
}