import 'package:cocoon/res/constants/imports.dart';

class CustomRadioButton extends StatelessWidget {

  final bool withBorder;
  
  final String value;
  final String? selectedValue;
  final Function(String) onChange;

  const CustomRadioButton(
      {super.key, this.withBorder=true, required this.value, required this.onChange, this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChange(value),
      child:  Container(
        padding: const EdgeInsets.all(1),
        decoration:withBorder? BoxDecoration(
            gradient: LinearGradient(colors: [
              context.secondary,
              const Color(0xff5487E0),
              context.secondary
            ])):const BoxDecoration(),

        child: ColoredBox(
          color: context.secondary,
          child: Container(
              padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: context.onPrimary,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: context.primary,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: value == selectedValue
                        ? Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.primary,
                            ),
                          )
                        : Container(),
                  ),
                ),
                SB.w(15),
                Expanded(child: Text(value,style:  context.bodyLarge!.copyWith(color: context.onPrimary),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
