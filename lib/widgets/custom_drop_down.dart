


import 'package:dropdown_button2/dropdown_button2.dart';

import '../res/constants/imports.dart';

class CustomDropDown extends StatelessWidget {

   CustomDropDown({super.key,this.backgroundColor,  required this.items, this.selectedValue, this.onChange, required this.hint,this.title,this.textColor});
  final List<DropDownItemModel> items; final DropDownItemModel? selectedValue;
  final String hint;
  final onChange;
  final String? title;
  final Color? textColor;
  final Color? backgroundColor;

  final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        if(title!=null) Text(title!,style: context.bodyLarge,),
        if(title!=null) SB.h(7),
        DropdownButtonHideUnderline(
          child: DropdownButton2<DropDownItemModel>(
            isExpanded: true,
            hint: Text(
              hint,
               textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                color: context.grey,
                
                
              ),
            ),
            items: items
                .map((item) => DropdownMenuItem(
              value: item,
              child: Text(
                item.name,
                style:  const TextStyle(
                  fontSize: 14,
                  color:Color.fromARGB(134, 0, 0, 0)
                ),
              ),
            ))
                .toList(),
            value: selectedValue,
            style: context.bodyLarge!.copyWith(color: context.onPrimary),
            onChanged: onChange,

            buttonStyleData:  ButtonStyleData(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 45,
                decoration: BoxDecoration(
    color:context.cardColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(0, 0, 0, 0),
                    )
                )
            ),
            iconStyleData: const IconStyleData(icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
            dropdownStyleData:DropdownStyleData(
              decoration: BoxDecoration(
                color:backgroundColor?? context.cardColor
              ),
              maxHeight: 200,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
             
            ),

            // dropdownSearchData: DropdownSearchData(
            //   searchController: textEditingController,
            //   searchInnerWidgetHeight: 50,
            //   searchInnerWidget: Container(
            //     height: 50,
            //     padding: const EdgeInsets.only(
            //       top: 8,
            //       bottom: 4,
            //       right: 8,
            //       left: 8,
            //     ),
            //     child: TextFormField(
            //       expands: true,
            //       maxLines: null,
            //       controller: textEditingController,
            //       decoration: InputDecoration(
            //         isDense: true,
            //         contentPadding: const EdgeInsets.symmetric(
            //           horizontal: 10,
            //           vertical: 8,
            //         ),
            //         hintText: 'Search for an item...',
            //         hintStyle: const TextStyle(fontSize: 12),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(8),
            //         ),
            //       ),
            //     ),
            //   ),
            //   searchMatchFn: (item, searchValue) {
            //     return item.value.toString().contains(searchValue);
            //   },
            // ),
            //This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        ),
      ],
    );
  }
}

class DropDownItemModel{
  final String? id;
  final String  name;

  DropDownItemModel({ this.id, required this.name});
}
