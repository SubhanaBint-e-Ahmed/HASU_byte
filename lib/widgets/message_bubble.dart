
class MessageBubble extends StatelessWidget {
  bool fromUser;
   MessageBubble({
    required this.fromUser,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:fromUser? CrossAxisAlignment.start:CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin:
          fromUser?EdgeInsets.only(right:context.width * 0.3,):EdgeInsets.only(left: context.width * 0.3),
          decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                topLeft:fromUser? const Radius.circular(0):const Radius.circular(10),
                topRight: fromUser? const Radius.circular(10):const Radius.circular(0),
                bottomRight:const Radius.circular(10),
                bottomLeft:const Radius.circular(10),
              ),
              color: fromUser?context.secondary:context.primary),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rutrum odio mauris, sit amet.',style: context.bodySmall!.copyWith(color: fromUser?Colors.black:context.onPrimary),),
              const SizedBox(height:14),
              Text('2:17 PM',style: context.bodySmall!.copyWith(color: fromUser?Colors.black:context.onPrimary,fontSize: 10),)
            ],
          ),
        ),

      ],
    );
  }
}