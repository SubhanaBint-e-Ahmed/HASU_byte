import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Search/widget/profile.dart';
import 'Filter/FilterMain.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => PeopleScreenState();
}

class PeopleScreenState extends State<PeopleScreen> {
  bool isToggled = true;
  String searchText = ""; // To store the search query

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Filtered People'),
      ),
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
              onChange: (value) {
                setState(() {
                  searchText = value.trim(); // Update search query dynamically
                });
              },
              onSuffixTap: () {
                Get.to(() => const FiltersScreen(selectedCategories: []));
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Search Results: 1864',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                20.w,
                const Text(
                  'Active Only',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
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
                  'assets/icons/cros2.svg',
                  height: 16,
                  width: 16,
                  color: AppColors.purple,
                ),
              ],
            ),
         

           
            if (searchText.isNotEmpty)
             const FilteredPeople(),
           /* if (searchText.isEmpty)
              const Center(
                child: Text(
                  'Please enter a search term.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),*/
          ],
        ),
      ),
    );
  }
}
