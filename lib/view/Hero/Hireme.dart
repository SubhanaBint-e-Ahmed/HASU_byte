import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/widget/collaps.dart';
import 'package:cocoon/view/Hero/widget/Services.dart';
import 'package:cocoon/view/Hero/widget/taskRating.dart';
import 'package:cocoon/view/Hero/widget/CustomReviewBar.dart';
import 'package:cocoon/view/Hero/widget/timezone.dart';
import 'package:cocoon/view/Hero/widget/ReviewCard.dart';
import 'package:cocoon/view/Hero/ServiceScreen.dart';

class HiremeScreen extends StatelessWidget {
  const HiremeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // Title aligned to the left
      const Text(
        'Hero',
        style: TextStyle(
          fontFamily: 'Gellix',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          height: 28.8 / 24,
        ),
          textAlign: TextAlign.left,
      ),
  
      SvgPicture.asset(
        'assets/icons/crcle.svg',  
        height: 24,
        width: 24,
      ),
    ],
  ),
),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 91,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 60,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/men.png'),
                          fit: BoxFit.cover,
                          width: 49,
                          height: 49,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'George Jones',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Trusted By Us',
                                style: TextStyle(
                                  color: AppColors.purple,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 8),
                              SvgPicture.asset(
                                'assets/icons/Trust.svg',
                                height: 16,
                                width: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/filled.svg',
                        height: 20,
                        width: 20,
                       
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/msg.svg',
                      height: 16.6,
                      width: 16.6,
                    ),
                    label: const Text('Contact Me'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(157, 38),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                        side: const BorderSide(
                          color: AppColors.purple,
                          width: 2,
                        ),
                      ),
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.purple,
                    ),
                  ),
                
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'About this Hero',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const CollapsibleSection(),

              const SizedBox(height: 16.0),
 SizedBox(
                width: 380, // Width of the row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Space between the elements
                  children: [
                    // Left-aligned "Service" text
                    const Text(
                      'Service',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 28.8 / 24, // Line height divided by font size
                      ),
                      textAlign: TextAlign.left,
                    ),

                    // Right-aligned "View All" text
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const ServiceDetailScreen(),
                        ); // Navigate to the next screen
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.purple, // Purple color for "View All"
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
              const ServicesScreen(),
              const SizedBox(height: 16.0),
              const LanguageAndTimeWidget(),
              const SizedBox(height: 16.0),
              const CustomLayout(),
              const SizedBox(height: 16.0),
              const TaskerRating(),
              const SizedBox(height: 16.0),
              const ReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
