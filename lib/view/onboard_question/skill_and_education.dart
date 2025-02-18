import 'package:cocoon/res/constants/imports.dart';

class SkillAndEducationView extends StatelessWidget {
  const SkillAndEducationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skill & Educational Level Information',
          style: context.headlineMedium!.copyWith(fontSize: 16),
        ),
        Text('(Private)',style: context.bodySmall,),
        20.h,
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: context.secondary,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              SvgPicture.asset(Assets.icons.info),
              10.w,
              Expanded(child: Text('Necessary to check your skill level.',style: context.bodySmall!.copyWith(color: context.primary),))
            ],
          ),
        ),
        20.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Skills',style: context.headlineMedium,),
          Row(
            children: [
            Icon(Icons.add,color: context.primary,size: 20
              ,),
            Text('Add more',style: context.bodyLarge!.copyWith(color: context.primary),)
          ],)
        ],),
        30.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Skills',style: context.headlineMedium,),
                5.w,
                Text('(Optional)',style: context.bodyMedium!.copyWith(color: context.grey),),
              ],
            ),
            Row(
              children: [
                Icon(Icons.add,color: context.primary,size: 20,),
                Text('Add more',style: context.bodyLarge!.copyWith(color: context.primary),)
              ],)
          ],),
      ],
    );
  }
}
