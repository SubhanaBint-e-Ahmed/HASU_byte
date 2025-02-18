import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Search/filterIcon.dart';
import 'ByLocation.dart';
import 'ByBudget.dart';
import 'ByRating.dart';
import 'ByCategory.dart';

class FiltersScreen extends StatefulWidget {
  final List<String> selectedCategories;
  final String? selectedLocation;
  final double? selectedMinBudget;
  final double? selectedMaxBudget;
  final List<String> selectedRatings;

  const FiltersScreen({
    super.key,
    this.selectedCategories = const [],
    this.selectedLocation,
    this.selectedMinBudget,
    this.selectedMaxBudget,
    this.selectedRatings = const [],
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late List<String> selectedCategories;
  late String? selectedLocation;
  late double? selectedMinBudget;
  late double? selectedMaxBudget;
  late List<String> selectedRatings;

  @override
  void initState() {
    super.initState();
    selectedCategories = widget.selectedCategories;
    selectedLocation = widget.selectedLocation;
    selectedMinBudget = widget.selectedMinBudget;
    selectedMaxBudget = widget.selectedMaxBudget;
    selectedRatings = widget.selectedRatings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filters',
          style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(() => const Filtericon());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFilterOption(
              'By Category',
              onTap: () => Get.to(() => const ByCategoryScreen()),
              subtitle: selectedCategories.isNotEmpty
                  ? selectedCategories.join(", ")
                  : null,
            ),
            _buildFilterOption(
              'By Location',
              onTap: () async {
                final location = await Get.to(() => ByLocationView(
                      selectedLocation: selectedLocation,
                    ));
                if (location != null) {
                  setState(() {
                    selectedLocation = location;
                  });
                }
              },
              subtitle: selectedLocation ?? '',
            ),
            _buildFilterOption(
              'By Budget',
              onTap: () async {
                final result = await Get.to(() => const BudgetFilter());
                if (result != null) {
                  setState(() {
                    selectedMinBudget = result['min'];
                    selectedMaxBudget = result['max'];
                  });
                }
              },
              subtitle: selectedMinBudget != null && selectedMaxBudget != null
                  ? '\$${selectedMinBudget!.toInt()} - \$${selectedMaxBudget!.toInt()}'
                  : '',
            ),
            _buildFilterOption(
              'By Rating',
              onTap: () async {
                final ratings = await Get.to(() => const RatingFilter());
                if (ratings != null) {
                  setState(() {
                    selectedRatings = ratings;
                  });
                }
              },
              subtitle: selectedRatings.isNotEmpty
                  ? selectedRatings.join(", ")
                  : '',
            ),
            const SizedBox(height: 20.0),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightGray,
                    foregroundColor: AppColors.purple,
                    side: const BorderSide(color: AppColors.lightGray),
                    minimumSize: const Size(120, 50),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  onPressed: _resetFilters,
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purple,
                    foregroundColor: AppColors.white,
                    minimumSize: const Size(180, 50),
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  ),
                  onPressed: () {
                    // Implement apply filters logic here
                  },
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterOption(
    String label, {
    required VoidCallback onTap,
    String? subtitle,
  }) {
    return Container(
      height: 65,
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        onTap: onTap,
        title: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            if (subtitle != null)
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: SizedBox(
                  width: 150.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15.0,
        ),
      ),
    );
  }

  void _resetFilters() {
    setState(() {
      selectedCategories = [];
      selectedLocation = null;
      selectedMinBudget = null;
      selectedMaxBudget = null;
      selectedRatings = [];
    });
  }
}
