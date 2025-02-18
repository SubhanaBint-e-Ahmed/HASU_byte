import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cocoon/view/Cart/widget/FoodOrderItem.dart';
import 'package:cocoon/view/Cart/widget/DeleteConfirmationDialog.dart';

class FoodOrderList extends StatefulWidget {
  const FoodOrderList({super.key});

  @override
  _FoodOrderListState createState() => _FoodOrderListState();
}

class _FoodOrderListState extends State<FoodOrderList> {
  bool isDeleteMode = false;
  List<int> selectedItems = [];
  int itemCount = 3; 
  void toggleDeleteMode() {
    setState(() {
      isDeleteMode = !isDeleteMode;
      if (!isDeleteMode) selectedItems.clear();
    });
  }

  void toggleItemSelection(int index) {
    setState(() {
      if (selectedItems.contains(index)) {
        selectedItems.remove(index);
      } else {
        selectedItems.add(index);
      }
    });
  }

  void confirmDelete() {
    if (selectedItems.isEmpty) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DeleteConfirmationDialog(
        onConfirm: () {
          setState(() {
            selectedItems.clear();
            isDeleteMode = false;
          });
          Navigator.pop(context);
        },
      ),
    );
  }

  void removeAllItems() {
    setState(() {
      itemCount = 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            mainAxisAlignment: isDeleteMode ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
            children: [
              if (isDeleteMode)
                Row(
                  children: [
                    GestureDetector(
                      onTap: confirmDelete,
                      child: const Text(
                        "Remove selected ",
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(width: 2),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/Delete.svg',
                        width: 20,
                        height: 20,
                      ),
                      onPressed: confirmDelete,
                    ),
                  ],
                ),
              Row(
                children: [
                  GestureDetector(
                    onTap: removeAllItems, 
                    child: const Text(
                      "Remove all",
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(width: 2),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/Delete.svg',
                      width: 20,
                      height: 20,
                    ),
                    onPressed: removeAllItems, 
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: ListView.builder(
              itemCount: itemCount, 
              itemBuilder: (context, index) => FoodOrderItem(
                index: index,
                isDeleteMode: isDeleteMode,
                isSelected: selectedItems.contains(index),
                onSelect: toggleItemSelection,
                onDelete: () {
                  setState(() {
                    selectedItems.remove(index);
                  });
                },
                onEnableDeleteMode: toggleDeleteMode,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
