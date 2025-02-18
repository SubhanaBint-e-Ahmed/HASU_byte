import 'package:cocoon/view/get_started/get_started_view.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import '../../../res/constants/imports.dart';
import '../../view_models/models/welcome_view_model/welcome_view_model.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (controller) => Scaffold(
        backgroundColor: context.primary,
        body: PageView.builder(
          onPageChanged: (v)=>controller.onPageChange(v),
          controller: controller.pageViewController,
          itemCount: controller.onBoardData.length,
          itemBuilder: (context, index) {
            WelcomeBoardModel item = controller.onBoardData[index];
            return UserGuideBoardingWidget(
              title: item.title,
              text: item.text,
              imagePath: item.imagePath,
            );
          },
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            AppButton.primary(title: 'Next',background:Colors.white,foregroundColor: AppColors.purple ,onPressed: ()=>Get.to(()=>const GetStartedView()),).paddingSymmetric(horizontal: 30),
            29.h,
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: controller.onBoardData.asMap().entries.map<Widget>(
                      (e) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: 10,
                      width:controller.pageViewIndex==e.key?30: 12,
                      decoration: BoxDecoration(
                          color:controller.pageViewIndex==e.key?context.onPrimary: Colors.black,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    );
                  },
                ).toList()),
          ],
        ).paddingAll(14),
      ),
    );
  }
}

class UserGuideBoardingWidget extends StatelessWidget {
  final String title;
  final String text;
  final String imagePath;

  const UserGuideBoardingWidget({
    required this.title,
    required this.text,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            50.h,
             SvgPicture.asset(Assets.icons.logo,color: context.onPrimary,),
            40.h,
            Image.asset(imagePath,fit: BoxFit.fitWidth,),
            20.h,
            Text(
              title,
              style: context.titleSmall!.copyWith(color: context.onPrimary),
              textAlign: TextAlign.center,
            ),
            15.h,
            Text(text,style: context.bodySmall!.copyWith(color: context.onPrimary),)
          ],
        ).paddingSymmetric(horizontal: 20),
      ),
    );
  }
}
