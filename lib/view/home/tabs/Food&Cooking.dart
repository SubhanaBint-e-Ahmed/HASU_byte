import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/home/widgets/service_card_widget.dart';
import 'package:cocoon/view/home/widgets/featured_eatables_section.dart';
import 'FilterButton/Filter.dart';

class FoodCookingScreen extends StatelessWidget {
  const FoodCookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg', height: 20.0, width: 20.0),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Food & Cooking',
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: 15.0),
              const Center(
                child: Text(
                  'Find chefs and food experts for your cooking needs',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => const FiltersScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 229, 238, 247),
                        foregroundColor: AppColors.purple,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/icons/Filter.svg', height: 20.0, width: 20.0),
                          const SizedBox(width: 8.0),
                          const Text('Filter', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purple,
                        foregroundColor: AppColors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      ),
                      child: const Text('All', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        side: const BorderSide(color: AppColors.purple, width: 2.0),
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.purple,
                      ),
                      child: const Text('Cooking Services', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        side: const BorderSide(color: AppColors.purple, width: 2.0),
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.purple,
                      ),
                      child: const Text('Food Preparation', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(color: AppColors.purple),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Buy Premium or Premium+ Membership',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 14.0, color: AppColors.white),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Flat 25% Off', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const FeaturedEatablesSection(),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Burger', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 5.0),
                  ServiceCardWidget(
                    title: 'Cheese Burger',
                    price: '30',
                    imagePath: 'assets/images/burger.png',
                    description: 'Special burger in many barie.......',
                  ),
                  SizedBox(height: 10.0),
                  Text('Pizza', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 5.0),
                  ServiceCardWidget(
                    title: 'Pizza',
                    price: '25',
                    imagePath: 'assets/images/pizza.png',
                    description: 'Special pizza in many varia....',
                  ),
                  SizedBox(height: 10.0),
                  Text('Other', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 5.0),
                  ServiceCardWidget(
                    title: 'Cheese Roll',
                    price: '40',
                    imagePath: 'assets/images/roll.png',
                    description: 'Special cheese roll in many varia....',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
