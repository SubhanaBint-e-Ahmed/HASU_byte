import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'Filter/FilterMain.dart';

class SelectedCategoriesScreen extends StatelessWidget {
  final List<String> selectedCategories; // List of selected categories to show
  final List<bool> selectedValues; // List of selected category checkboxes

  const SelectedCategoriesScreen({
    super.key,
    required this.selectedCategories,
    required this.selectedValues,
  });

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
            const CustomTextField(
             
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg',
              
            
            ),

            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: selectedCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16.0), // Space between list items
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0), // Border radius for each item
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
                        selectedCategories[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, // Makes the category text bold
                        ),
                      ),
                      value: selectedValues[index],
                      onChanged: (value) {},
                      controlAffinity: ListTileControlAffinity.trailing, // Align checkbox to the right
                    ),
                  );
                },
              ),
            ),
            // Simple "Done" button placed directly at the bottom of the screen
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
                  // Filter the selected categories and pass them to FiltersScreen
                  List<String> filteredCategories = [];
                  for (int i = 0; i < selectedValues.length; i++) {
                    if (selectedValues[i]) {
                      filteredCategories.add(selectedCategories[i]);
                    }
                  }
                  Get.to(() => FiltersScreen(selectedCategories: filteredCategories));
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
