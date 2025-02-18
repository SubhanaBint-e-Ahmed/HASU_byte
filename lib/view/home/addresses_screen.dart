import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/widgets/address_item.dart';
import 'add_new_address_screen.dart';
import 'package:cocoon/res/constants/app_colors.dart'; 

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({super.key});

  @override
  _AddressesScreenState createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  int? selectedAddressIndex; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Addresses",
          style: TextStyle(fontSize: 20), 
        ),
        centerTitle: false, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4, 
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0), 
                  child: AddressItem(
                    addressType: "Home",
                    address: "6238, Central Park, London, UK",
                    isSelected: selectedAddressIndex == index, 
                    onEdit: () {
                      
                    },
                    onRadioChanged: (bool? value) {
                      setState(() {
                        selectedAddressIndex = value == true ? index : null; 
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 250.0),
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const AddNewAddressScreen(isEdit: false));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                backgroundColor: AppColors.lightGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 5,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: const Text("Add New Address"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
              Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                minimumSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                "Save",
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
