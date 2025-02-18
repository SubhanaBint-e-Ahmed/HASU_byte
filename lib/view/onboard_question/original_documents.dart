import 'package:cocoon/res/constants/imports.dart';

class OriginalDocumentsView extends StatelessWidget {
  const OriginalDocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Original Documents',
          style: context.headlineMedium!.copyWith(fontSize: 16),
        ),
        Text('(Required)',style: context.bodySmall,),
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
              Expanded(child: Text('To continue you must upload all the original documents related to the skills & your education you have added.',style: context.bodySmall!.copyWith(color: context.primary),))
            ],
          ),
        ),
        30.h,
        Container(
          padding: const EdgeInsets.all(16),
          color: context.cardColor,
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upload Documents',style: context.titleSmall,),
                  SvgPicture.asset(Assets.icons.info,color: Colors.black,)
                ],
              ),
              10.h,
              Text('Proof to check if your are eligible to start giving services.',style: context.bodySmall!.copyWith(),),
              15.h,
              AppButton.primary(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.paperUpload),
                  10.w,
                  Text('.pdf, .doc, .docx formats only',style: context.bodyMedium!.copyWith(color: context.onPrimary),)
                ],
              ),)
            ],
          ),
        )

      ],
    );
  }
}
