import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/widgets/address_item.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int? selectedAddressIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Location",
          style: TextStyle(
            fontFamily: 'Gellix',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            height: 28.8 / 24,
            letterSpacing: 0,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 428,
            height: 560,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 100),
            child: Column(
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
                          onEdit: () {},
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
               const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    //Get.to(() => const AddNewAddressScreen(isEdit: false));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightGray,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 18, horizontal: 16,
                    ),
                    minimumSize: const Size(380, 50),
                  ),
                  child: const Text(
                    "Add New Address",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
            const SizedBox(height: 86),
          Positioned(
            bottom: 5, 
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  //Get.to(() =>  VoucherScreen());
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
          )
        ],
      ),
    );
  }
}
