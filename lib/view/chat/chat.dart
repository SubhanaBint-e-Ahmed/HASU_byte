
import '../../../res/constants/imports.dart';
import '../../../widgets/message_bubble.dart';

class ChatScreenAdmin extends StatelessWidget {
  const ChatScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChattAppBar(),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) => MessageBubble(fromUser:index%2==0?true:false),
                  separatorBuilder: (context, index) => const SizedBox(

                        height: 20,
                      ),
                  itemCount: 7)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: context.cardColor,
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: CustomTextField(

                          suffixIcon: Assets.icons.camera,
                      hintText: 'Write message...',
                      fillColor: context.extraLightGrey,
                      borderRadius: 30,
                      validator: (v) {
                        return null;
                      },
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: context.secondary,
                      ),
                      child: SvgPicture.asset(Assets.icons.send),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class ChattAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChattAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: context.cardColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
                       const Icon(Icons.arrow_back_sharp),
              const SizedBox(
                width: 12,
              ),
              Text(
                'John Doe',
                style: context.titleSmall,
              ),
            ],
          ),
          SvgPicture.asset(Assets.icons.moreCircle)
        ],
      ).paddingSymmetric(vertical:  20),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(100, 100);
}
