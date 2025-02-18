import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/location_popup.dart';
import 'package:cocoon/view/home/widgets/location_bar.dart';
import 'package:cocoon/view/home/widgets/slideshow_section.dart';
import 'package:cocoon/view/home/widgets/button_section.dart';
import 'package:cocoon/view/home/widgets/categories_section.dart';
import 'package:cocoon/view/home/widgets/featured_eatables_section.dart';
import 'package:cocoon/view/home/widgets/people_section.dart';
import 'package:cocoon/view/home/widgets/ServicesSection.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void _showLocationPopup() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LocationPopup(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              child: SvgPicture.asset("assets/icons/Logo.svg"),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationBar(onTap: _showLocationPopup),
              30.h,
              const SlideshowSection(),
               5.h,
              const ButtonSection(),
                 15.h,
              const CategoriesSection(),
                15.h,
              const FeaturedEatablesSection(),
             15.h,
              const PeopleSection(),
               15.h,
              const ServicesSection(), 
            ],
          ),
        ),
      ),
    );
  }
}
