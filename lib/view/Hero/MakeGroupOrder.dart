import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/widget/MakeGroupOrder/TextFiled.dart';
import 'package:cocoon/view/Hero/widget/MakeGroupOrder/scheduleOrder.dart';
import 'package:cocoon/view/Hero/widget/MakeGroupOrder/LocationSelection.dart';
import 'package:cocoon/view/Hero/widget/MakeGroupOrder/GuestLocation.dart';



class MakeGroupOrderScreen extends StatefulWidget {
  const MakeGroupOrderScreen({super.key});

  @override
  _MakeGroupOrderScreenState createState() => _MakeGroupOrderScreenState();
}

class _MakeGroupOrderScreenState extends State<MakeGroupOrderScreen> {
 
  bool isSelected = false;

 

  final guestLocations = [
    GuestLocation(
      photoUrl: 'assets/images/avtar.png',
      name: 'Francene Vandyne',
      contactNumber: '+1-202-555-0167',
      address: '6238, Central Park, London, UK',
    ),
    GuestLocation(
      photoUrl: 'assets/images/avtar.png',
      name: 'Francene Vandyne',
      contactNumber: '+1-202-555-0167',
      address: '6238, Central Park, London, UK',
    ),
     GuestLocation(
      photoUrl: 'assets/images/avtar.png',
      name: 'Francene Vandyne',
      contactNumber: '+1-202-555-0167',
      address: '6238, Central Park, London, UK',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Make Group Order',
          style: TextStyle(
            fontFamily: 'Gellix',
            fontSize: 24,
            fontWeight: FontWeight.w700,
            height: 28.8 / 24,
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
      
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 380,
                      height: 138,
                      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1404060F),
                            blurRadius: 60,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Group Name',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 22.4 / 16,
                              letterSpacing: 0.2,
                            ),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: 322, 
                            child: CustomTextField(
                              hintText: 'Group 7 , Design Team',
                              hintTextColor: AppColors.gry,
                              textColor: Colors.black,
                              fillColor: AppColors.lightGray,
                              borderRadius: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    const SizedBox(height: 16),
                    const CustomTextFields(),
                    const SizedBox(height: 16),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    const SizedBox(height: 16),

                  
                    Container(
                      width: 380,
                      height: 64,
                      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1404060F),
                            blurRadius: 60,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Order Now',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 22.4 / 16,
                              letterSpacing: 0.2,
                            ),
                          ),
                          const Spacer(),
                          Transform.scale(
                            scale: 1.2, 
                            child: Radio<bool>(
                              value: false,
                              groupValue: isSelected,
                              activeColor: AppColors.purple, 
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                (states) => AppColors.purple, 
                              ),
                              onChanged: (value) {
                                setState(() {
                                  isSelected = !isSelected; 
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 380,
                      height: 40,
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      decoration: BoxDecoration(
                        color: const Color(0x33246BFD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.info, color: Color(0xFF246BFD)),
                          SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              'Guests will get 20 minutes to complete the order.',
                              style: TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 19.6 / 14,
                                letterSpacing: 0.2,
                                color: Color(0xFF246BFD),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ScheduleOrderWidget(),
                    const SizedBox(height: 16),
                    const LocationSelectionWidget(),
                    const SizedBox(height: 16),
                    const Text(
                      "Your Location",
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        height: 21.6 / 18,
                        letterSpacing: 0.0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 380, 
                      height: 80, 
                      padding: const EdgeInsets.all(10), 
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(16), 
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1404060F), 
                            blurRadius: 60,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 193, 144, 202),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.purple,
                                ),
                                child: const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10), 
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment:
                                MainAxisAlignment.center, 
                            children: [
                              Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "6238, Central Park, London, UK",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/Edit.svg',
                              color: AppColors.purple,
                              height: 20,
                              width: 15,
                            ),
                            onPressed: () {
                             
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    const SizedBox(height: 16),
                    const Text(
                      "Guest's Location",
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        height: 21.6 / 18,
                        letterSpacing: 0.0,
                      ),
                    ),
                    GuestLocationList(guestLocations: guestLocations),
                  ],
                ),
              ),
            ),
          ),
        Container(
  width: 300,
  height: 90,
  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
  color: Colors.white,
  child: Center(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 70), 
        padding: EdgeInsets.zero, 
        backgroundColor: const Color(0xFF642D91),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), 
        ),
      ),
      onPressed: () {
       
      },
      child: const Text(
        'Complete',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500, 
          color: Colors.white,
        ),
        textAlign: TextAlign.center, 
      ),
    ),
  ),
),


        ],
      ),
    );
  }
}
