import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/widgets/custom_drop_down.dart';

import 'get_info_controller.dart';

class GetInfoOptionWidget extends StatelessWidget {
  final GetInfoController controller;

  const GetInfoOptionWidget({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Level Information',
            style: context.headlineMedium!.copyWith(fontSize: 16),
          ),
          Text('(Private)',style: context.bodySmall,),
          20.h,
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.secondary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.info),
                10.w,
                Expanded(child: Text('Answer some questions about yourself/your business to help customize your profile.',style: context.bodySmall!.copyWith(color: context.primary),))
              ],
            ),
          ),
          14.h,

          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.logoSmall),
                10.w,
                Expanded(child: Text('Don’t worry your information will remain confidential.',style: context.bodySmall!.copyWith(color: context.onPrimary),),

                ),
                10.w,
                SvgPicture.asset(Assets.icons.info,color: context.onPrimary,),


              ],
            ),
          ),

        20.h,

          Text(
            '1. Which option best describes you?',
            style: context.headlineMedium!.copyWith(fontSize: 16),
          ),
          RadioMenuButton(
              value: 'Businessman',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Businessman')),
          RadioMenuButton(
              value: 'Student',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Student')),
          RadioMenuButton(
              value: 'Freelancer',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Freelancer')),
          RadioMenuButton(
              value: 'Employer',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Employer')),
          RadioMenuButton(
              value: 'Agent (Serve external clients)',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Agent (Serve external clients)')),
          RadioMenuButton(
              value: 'Other',
              groupValue: controller.selectedValueDescribeYou,
              onChanged: (v) => controller.setSelectValueDescribeYou(v!),
              child: const Text('Other')),
          const SizedBox(
            height: 30,
          ),
          Text(
            '2. Your gender?',
            style: context.headlineMedium!.copyWith(fontSize: 16),
          ),
          RadioMenuButton(
              value: 'Male',
              groupValue: controller.selectedValueGender,
              onChanged: (v) => controller.setSelectValueGender(v!),
              child: const Text('Male')),
          RadioMenuButton(
              value: 'Female',
              groupValue: controller.selectedValueGender,
              onChanged: (v) => controller.setSelectValueGender(v!),
              child: const Text('Female')),
          RadioMenuButton(
              value: 'Prefer not to say',
              groupValue: controller.selectedValueGender,
              onChanged: (v) => controller.setSelectValueGender(v!),
              child: const Text('Prefer not to say')),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2. ',
                style: context.headlineMedium!.copyWith(fontSize: 16),
              ),
              Expanded(
                  child: Text(
                'Which industry best describes your workplace/business?',
                style: context.headlineMedium!.copyWith(fontSize: 16),
              )),
            ],
          ),
          const SizedBox(height: 10,),
          CustomDropDown(
            items: [
              DropDownItemModel(name: 'Food & Restaurants'),
              DropDownItemModel(name: 'Food'),
            ],
            hint: 'Select',

          )
        ],
      ),
    );
  }
}
