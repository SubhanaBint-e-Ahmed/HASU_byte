import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import'FilterMain.dart' ;

class ByCategoryScreen extends StatefulWidget {
  const ByCategoryScreen({super.key});

  @override
  State<ByCategoryScreen> createState() => _ByCategoryScreenState();
}

class _ByCategoryScreenState extends State<ByCategoryScreen> {
  List<String> categories = [
    "Clothes & Shoes",
    "Laundry",
    "Automotive & Vehicle",
    "Cleaning",
    "Health & Beauty",
    "Tutors",
    "Maid",
    "Repairing",
    "Pets",
  ];

  final List<bool> _selectedCategories = List.filled(9, false);
  bool _isCategoryListVisible = false; 
  final TextEditingController _searchController =
      TextEditingController(); 
  
  // Define the missing variables
  String? selectedLocation;
  double? selectedMinBudget;
  double? selectedMaxBudget;
  List<String> selectedRatings = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'By Category',
          style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _searchController,
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg',
              onTap: () {
                setState(() {
                  _isCategoryListVisible =
                      !_isCategoryListVisible; // Toggle category list visibility
                });
              },
            ),

            const SizedBox(height: 20),

            // Show category list only when _isCategoryListVisible is true
            if (_isCategoryListVisible)
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          bottom: 16.0), // Space between list items
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            15.0), // Border radius for each item
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 25,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: CheckboxListTile(
                        title: Text(
                          categories[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        value: _selectedCategories[index],
                        onChanged: (value) {
                          setState(() {
                            _selectedCategories[index] = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    );
                  },
                ),
              ),

            const SizedBox(height: 20),

            // Show the 'Done' button when the category list is visible
            if (_isCategoryListVisible)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purple,
                    foregroundColor: AppColors.white,
                    minimumSize: const Size(180, 50),
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    List<String> selectedCategoriesList = [];
                    for (int i = 0; i < categories.length; i++) {
                      if (_selectedCategories[i]) {
                        selectedCategoriesList.add(categories[i]);
                      }
                    }

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FiltersScreen(
                          selectedCategories: selectedCategoriesList,
                          selectedLocation: selectedLocation,
                          selectedMinBudget: selectedMinBudget,
                          selectedMaxBudget: selectedMaxBudget,
                          selectedRatings: selectedRatings,
                        ),
                      ),
                    );
                  },
                  child: const Text("Done"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
