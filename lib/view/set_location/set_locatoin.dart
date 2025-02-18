import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/add_profile_details/add_profile_details_view.dart';

class SetLocationView extends StatefulWidget {

  const SetLocationView({super.key});
  @override
  State<SetLocationView> createState() => _SetLocationViewState();
}

class _SetLocationViewState extends State<SetLocationView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet(context);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Location',
      ),
      body: InkWell(
        onTap:()=> showBottomSheet(context),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.images.maskGroup.path),fit: BoxFit.cover),

          ),
        ),
      ),
    );
  }

  showBottomSheet(BuildContext context){
   return Get.bottomSheet(
       isScrollControlled: false,
       
       Container(
         decoration: BoxDecoration(
           color: context.scaffoldBackgroundColor,
           borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
         ),
         child: SingleChildScrollView(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               20.h,
               SvgPicture.asset(Assets.icons.indicator),
               30.h,
               Text('Location',style: context.titleSmall,),
               40.h,
               CustomTextField(
                 hintText:'Times Square NYC, Manhattan',
                 hintTextColor: Colors.black,
                 suffixIcon: Assets.icons.location2,
                 textColor: Colors.black,
               ),
               30.h,
               AppButton.primary(title: 'Save & continue',onPressed: ()=>Get.off(()=>const AddProfileDetailsView()),),
               40.h,
             ],
           ).paddingSymmetric(horizontal: 20),
         ),
       )
   );
 }
}
