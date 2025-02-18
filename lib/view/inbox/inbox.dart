

import '../../../res/constants/imports.dart';
import '../../view_models/models/inbox_view_model/inbox_view_model.dart';
import '../chat/chat.dart';


class InboxView extends StatelessWidget {
  const InboxView({super.key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<InboxController>(
      init: InboxController(),
        builder:(controller) => Scaffold(
          appBar: AppBar(title: Text('Inbox',style: context.titleSmall!.copyWith(color: context.primary),),),
          body: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(hintText: 'Search',prefixIcon: Assets.icons.search,fillColor: const Color(0xffF5F5F5),),
              20.h,
              Row(
                children: controller.status.asMap().entries.map((e) => Row(
                  children: [
                    InkWell(
                      onTap:()=>controller.setStatusValue(e.value),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        decoration: BoxDecoration(
                            color:e.value==controller.selectedValue? context.primary:Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: context.primary,width: 2)
                        ),
                        child: Text(e.value,style: context.bodyLarge!.copyWith(color:e.value==controller.selectedValue? context.onPrimary:context.primary),),

                      ),
                    ),
                    const SizedBox(width: 10,)
                  ],
                ),).toList() ,
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(20),
                    color: context.cardColor,
                    child:ListView.separated(itemBuilder: (context, index) =>  const InboxUserWidget(), separatorBuilder: (context, index) => const SizedBox(height: 20), itemCount: 4)
                ),
              )

            ],
          ).paddingSymmetric(horizontal: 15),
        ));
  }
}








class InboxUserWidget extends StatelessWidget {
  const InboxUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Get.to(()=>const ChatScreenAdmin()),
      child: Card(

        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
             // Assets.icons.point.svg(),
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Assets.images.personc.image(height: 60,width: 60)),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('John Doe',style: context.headlineMedium,),
                        Text('2:53',style: context.bodyMedium,),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              width: context.width*0.6,
                              child: Text('I can help with your task',style: context.bodyMedium,)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: context.primary,
                            shape: BoxShape.circle,
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text('+9',style: context.bodySmall!.copyWith(color: context.onPrimary),),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
