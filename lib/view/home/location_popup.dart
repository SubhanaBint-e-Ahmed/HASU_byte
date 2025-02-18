import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'addresses_screen.dart';
import 'location.dart';

class LocationPopup extends StatelessWidget {
  const LocationPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(90),
          topRight: Radius.circular(90),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.54,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 3,
                width: 55,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.only(top: 0, bottom: 20),
              ),

              const Text(
                "Location",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
              20.h,

              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 238, 235, 235)
                          .withOpacity(0.9)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 201, 198, 198)
                          .withOpacity(0.4),
                      offset: const Offset(0, 6),
                      blurRadius: 20,
                      spreadRadius: 5,
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
                            color: Color.fromARGB(
                                255, 193, 144, 202), 
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
                    8.w, 
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
                        Get.to(() => const AddressesScreen());
                      },
                    ),
                  ],
                ),
              ),
              
              30.h,
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                          color: Color.fromARGB(255, 202, 201, 201),
                          thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: AppColors.gry,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                          color: Color.fromARGB(255, 202, 201, 201),
                          thickness: 1)),
                ],
              ),
              30.h,

              Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 201, 198, 198)
                            .withOpacity(0.4),
                        offset: const Offset(0, 6),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: AppColors.lightGray.withOpacity(0.9)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on, 
                        color: AppColors.purple, 
                        size: 30, 
                      ),
                      20.w,
                      const Text(
                        "Select from Map",
                        style: TextStyle(
                          color: AppColors.purple,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LocationScreen());
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  )),

              30.h,

           
              AppButton.primary(
                title: "Apply",
                elevation: 5,

                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
