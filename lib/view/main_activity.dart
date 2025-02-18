import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/home_view.dart';
import 'package:cocoon/view/inbox/inbox.dart';
import 'package:cocoon/view/Search/SearchView.dart';
import 'package:cocoon/view/Cart/Cart.dart';

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationControllerGetx = Get.put(NavigationControllerGetx());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => Container(
            height: 78,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: const Color(0xFF9E9E9E),
              selectedItemColor: AppColors.purple,
              elevation: 0,
              backgroundColor: Colors.white,
              selectedFontSize: 13,
              unselectedFontSize: 13,
              // selectedLabelStyle:
              //     TAppConst.kStyle4.copyWith(color: TAppConst.secondaryColor),
              // unselectedLabelStyle:
              // TAppConst.kStyle4.copyWith(color: TAppConst.gray5),
              currentIndex: navigationControllerGetx.selectedIndex.value,
              onTap: (index) =>
                  navigationControllerGetx.changeSelectedIndex(index),
              items: [
                BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/home_s.svg",
                      unSelectedIconPath: "assets/icons/home_un.svg",
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 0,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/SearchF.svg",
                      unSelectedIconPath: "assets/icons/search.svg",
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 1,
                    ),
                    label: "Search"),
               
                BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/cu.svg",
                      unSelectedIconPath: "assets/icons/cus.svg",
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 2,
                    ),
                    label: "Inbox"),
                     BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/cs.svg",
                      unSelectedIconPath: "assets/icons/c.svg",
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 3,
                    ),
                    label: "Cart"),
                    /* BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/c.svg",
                      unSelectedIconPath: "assets/icons/c.svg",
                      height: 38,
                      width: 38,
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 2,
                    ),
                    label: ""),*/
                BottomNavigationBarItem(
                    icon: CustomTabImage(
                      selectedIconPath: "assets/icons/ps.svg",
                      unSelectedIconPath: "assets/icons/pus.svg",
                      isSelected:
                          navigationControllerGetx.selectedIndex.value == 4,
                    ),
                    label: "Profile"),
              ],
            ),
          ),
        ),
        body: Obx(
          () => navigationControllerGetx
              .screens[navigationControllerGetx.selectedIndex.value],
        ));
  }
}

class CustomTabImage extends StatelessWidget {
  final String unSelectedIconPath;
  final bool isSelected;
  final String selectedIconPath;
  final double height;
  final double width;

  const CustomTabImage(
      {super.key,
      required this.unSelectedIconPath,
      required this.isSelected,
      required this.selectedIconPath,
      this.height = 26,
      this.width = 26});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          isSelected ? selectedIconPath : unSelectedIconPath,
          height: height,
          width: width,
        ),
        7.h,
      ],
    );
  }
}

class NavigationControllerGetx extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeView(),
     const SearchView(),
    const InboxView(),
   const CartScreen(),
    Container(color: Colors.pink),
  ];

  changeSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
