import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/service_card_widget.dart';

import 'Filter/FilterMain.dart';
import 'people.dart';

class Filtericon extends StatefulWidget {
  const Filtericon({super.key});

  @override
  State<Filtericon> createState() => _FiltericonState();
}

class _FiltericonState extends State<Filtericon> {
  bool isToggled = true;
  String searchText = ""; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'Search',
                style: TextStyle(
                  color: AppColors.purple,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg',
              suffixIcon: 'assets/icons/Filterfilled.svg',
              onTap: () => { Get.to(() => const PeopleScreen())},
              onSuffixTap: () {
                Get.to(() => const FiltersScreen(selectedCategories: []));
              },
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Active Only',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                const SizedBox(width: 4),
                // Toggle button
                Transform.scale(
                  scale: 1,
                  child: Switch(
                    value: isToggled,
                    onChanged: (bool value) {
                      setState(() {
                        isToggled = value;
                      });
                    },
                    activeColor: AppColors.purple,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: AppColors.lightGray,
                    thumbColor: WidgetStateProperty.all(Colors.white),
                    trackColor: WidgetStateProperty.all(AppColors.purple),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // New Row for "Filter"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filtered Search',
                  style: TextStyle(
                    color: AppColors.purple,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/cros2.svg', // Replace with your actual icon path
                  height: 16,
                  width: 16,
                  color: AppColors.purple, // You can change the color of the icon if needed
                ),
              ],
            ),

            
        

            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Searches',
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Clear All',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0),
                ServiceCardWidget(
                  title: 'Cheese Burger',
                  price: '30',
                  imagePath: 'assets/images/burger.png',
                  description: 'Special burger in many barie.......',
                ),
                SizedBox(height: 10.0),
                ServiceCardWidget(
                  title: 'Pizza',
                  price: '25',
                  imagePath: 'assets/images/pizza.png',
                  description: 'Special pizza in many varia....',
                ),
                SizedBox(height: 10.0),
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
    );
  }
}
