import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingFilter extends StatefulWidget {
  const RatingFilter({super.key});

  @override
  State<RatingFilter> createState() => _RatingFilterState();
}

class _RatingFilterState extends State<RatingFilter> {
  final List<bool> _selectedRatings = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'By Rating',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: List.generate(
                  5,
                  (index) => RatingRow(
                    rating: 5 - index,
                    isSelected: _selectedRatings[index],
                    onSelected: (value) {
                      setState(() {
                        _selectedRatings[index] = value;
                      });
                    },
                  ),
                ),
              ),
            ),
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
                  // Extract selected ratings as "5 stars", "4 stars", etc.
                  final selectedRatings = _selectedRatings
                      .asMap()
                      .entries
                      .where((entry) => entry.value)
                      .map((entry) => '${5 - entry.key} star${(5 - entry.key) > 1 ? "s" : ""}')
                      .toList();
                  Get.back(result: selectedRatings);
                },
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingRow extends StatelessWidget {
  final int rating;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  const RatingRow({
    super.key,
    required this.rating,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Row(
            children: List.generate(
              rating,
              (index) => Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  if (index != rating - 1) const SizedBox(width: 5),
                ],
              ),
            ),
          ),
         // const SizedBox(width: 10),
          //Text(
           //// '$rating star${rating > 1 ? "s" : ""}',
           // style: const TextStyle(fontSize: 16.0),
          //),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: AppColors.white.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: Checkbox(
              value: isSelected,
              onChanged: (value) {
                onSelected(value ?? false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
