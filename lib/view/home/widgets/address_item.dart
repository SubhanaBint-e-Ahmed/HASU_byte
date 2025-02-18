import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class AddressItem extends StatelessWidget {
  final String addressType;
  final String address;
  final bool isSelected;
  final VoidCallback onEdit;
    final ValueChanged<bool?> onRadioChanged; 

  const AddressItem({super.key, 
    required this.addressType,
    required this.address,
    required this.isSelected,
    required this.onEdit,
    required this.onRadioChanged, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 193, 144, 202), 
              ),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.purple, 
              ),
              child: const Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20, // Icon size
              ),
            ),
          ],
        ),
        title: Text(
          addressType,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17), 
        ),
        subtitle: Text(address),
        trailing: Radio<bool>(
          value: true,
          groupValue: isSelected,
          onChanged: onRadioChanged, 
        ),
        onTap: onEdit,
      ),
    );
  }
}
