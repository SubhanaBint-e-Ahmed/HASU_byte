import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/Hero/ServiceScreen.dart';

class WashmanServicesScreen extends StatelessWidget {
  const WashmanServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> serviceNames = [
      'Wash & Fold',
      'Wash & Fold',
    ];
    List<String> ratings = ['4.8', '4.8'];
    List<String> followers = ['900+', '900+'];
    List<String> images = [
      "assets/images/washService.png",
      "assets/images/washService.png",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: serviceNames.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                  
                    Get.to(
                      () => const ServiceDetailScreen(),
                    );
                  },
                  child: Container(
                    width: 181,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF04060F).withOpacity(0.08),
                          offset: const Offset(0, 4),
                          blurRadius: 60,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              images[index],
                              height: 123,
                              width: 161,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    ratings[index],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.purple,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    "(${followers[index]})",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            serviceNames[index],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 1),
                          const Text(
                            "I will wash your cloths and...",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.gry,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 1),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "From",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.gry,
                                ),
                              ),
                              SizedBox(width: 2),
                              Text(
                                "\$25/hr",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


