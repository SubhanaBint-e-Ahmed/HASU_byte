import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/people_section.dart';
import 'RecentSeacrhes.dart'; 

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
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

            const CustomTextField(
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg',
              suffixIcon: 'assets/icons/Filter.svg',
            ),
            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Recent Searches',
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

           
            GestureDetector(
              onTap: () {
                Get.to(() => const RecentSearchesScreen()); // Navigate to the next screen
              },
              child: Image.asset(
                'assets/images/Loading.png',
                width: 380,
                height: 368,
              ),
            ),
            const SizedBox(height: 20),

            const PeopleSection(),
          ],
        ),
      ),
    );
  }
}
