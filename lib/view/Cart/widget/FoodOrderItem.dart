import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Cart/Checkout1.dart';

class FoodOrderItem extends StatelessWidget {
  final int index;
  final bool isDeleteMode;
  final bool isSelected;
  final Function(int) onSelect;
  final VoidCallback onDelete;
  final VoidCallback onEnableDeleteMode;

  const FoodOrderItem({super.key, 
    required this.index,
    required this.isDeleteMode,
    required this.isSelected,
    required this.onSelect,
    required this.onDelete,
    required this.onEnableDeleteMode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isDeleteMode)
          Checkbox(
            value: isSelected,
            onChanged: (value) => onSelect(index),
          ),
        Expanded(
          child: Container(
            width: 380,
            height: 168,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/images/CheeBurger.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cheese Burger',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 1.4,
                              letterSpacing: 0.2,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$2.5',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.4,
                              letterSpacing: 0.2,
                              color: Color(0xFF642D91),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Pick up at 117 Clarendon Park Rd',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                              letterSpacing: 0.2,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (!isDeleteMode)
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/Delete.svg',
                          width: 24,
                          height: 24,
                        ),
                        onPressed: onEnableDeleteMode, 
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: 356,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFEEEEEE),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {Get.to(() => const Checkout1Screen());}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: index == 0
                          ? const Color(0xFF642D91) 
                          : const Color(0xFFEEEEEE), // Others are gray
                      textStyle: const TextStyle(fontSize: 16),
                      minimumSize: const Size(356, 38),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: index == 0
                            ? Colors.white 
                            : Colors.grey, 
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
