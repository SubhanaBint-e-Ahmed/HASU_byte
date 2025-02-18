import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/widget/ReviewRatingCard.dart';
import 'package:cocoon/view/Hero/widget/filterPopup.dart';

class ReviewRatingScreen extends StatelessWidget {
  const ReviewRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reviews & Ratings',
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
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const FilterPopup(); 
            },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(48),
              ),
            ),
            isScrollControlled: true, // Allows content to be scrollable
            backgroundColor: Colors.transparent, // Makes the background transparent
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 5),
              CustomTextField(
                hintText: 'Filter',
                hintTextColor: AppColors.black,
                fillColor: AppColors.lightGray,
                borderRadius: 10.0,
                suffixIcon: 'assets/icons/Filter.svg',
                onSuffixTap: () {
                  // You can leave this empty or add a different action here.
                },
              ),
              const SizedBox(height: 20),
              const ReviewRatingCard(),
            ],
          ),
        ),
      ),
    );
  }
}
