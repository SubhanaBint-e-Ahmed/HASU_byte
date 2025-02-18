import 'package:flutter/material.dart';

class CustomTextFields extends StatefulWidget {
  const CustomTextFields({super.key});

  @override
  _CustomTextFieldsState createState() => _CustomTextFieldsState();
}

class _CustomTextFieldsState extends State<CustomTextFields> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final List<String> options = ['none', '1,000', '2,000', 'Custom'];

    return Container(
      width: 380,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1404060F),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Order Budget (Limit per person)',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 22.4 / 16,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(options.length, (index) {
              final isSelected = selectedIndex == index;
              return Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 16,
                    ),
                    margin: const EdgeInsets.only(right: 5), 
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xFF642D91) 
                          : const Color(0xFFF5F5F5), 
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        options[index],
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          height: 19.6 / 10,
                          letterSpacing: 0.2,
                          color: isSelected
                              ? Colors.white 
                              : const Color(0xFF9E9E9E), 
                        ),
                        textAlign: TextAlign.left,
                  //overflow: TextOverflow.ellipsis, // Safeguard against overflow
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
