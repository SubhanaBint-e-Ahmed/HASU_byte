import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'tabs/PhysicalTab.dart';
import 'tabs/FoodTab.dart';
import 'tabs/DigitalTab.dart';
import 'tabs/InterestTab.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    print("TabController initialized");
  }

  @override
  void dispose() {
    _tabController.dispose();
    print("TabController disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Removes app bar shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start, // Aligns to the left
          children: [
            Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0, // Reduced font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0), // Apply padding to the entire body
        child: Column(
          children: [
            // Search bar
            const CustomTextField(
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg', // Add search icon here
            ),
            const SizedBox(height: 16.0), // Spacing between the search bar and the tab bar
            // Tab bar
            Container(
              color: Colors.white, // To match the background color with the app bar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Aligns the TabBar to the left
                children: [
                  Expanded(
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: false, // Disables horizontal scrolling
                      indicatorColor: AppColors.purple, // Tab indicator color is grey
                      indicatorWeight: 4.0, // Thinner indicator line
                      indicatorSize: TabBarIndicatorSize.label, // Makes the indicator line width equal to label width
                      labelColor: AppColors.purple, // Tab text color when selected
                      unselectedLabelColor: Colors.grey, // Tab text color when not selected
                      labelStyle: const TextStyle(
                        fontSize: 16.5, // Adjust the font size here
                      ),
                      labelPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Reduces the gap between labels
                      tabs: const [
                        Tab(text: 'Physical'),
                        Tab(text: 'Food'),
                        Tab(text: 'Digital'),
                        Tab(text: 'Interest'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0), // Spacing between the tab bar and tab content
            // Tab content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PhysicalTab(),
                  FoodTab(),
                  DigitalTab(),
                  InterestTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
