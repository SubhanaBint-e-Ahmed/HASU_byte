import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class DetailTaskCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String actionText;
  final String imageUrl;
  final VoidCallback? onTap;
  final Color bgColor;
  final Color? statusColor;

  const DetailTaskCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.actionText,
    required this.imageUrl,
    this.statusColor = AppColors.p1,
    this.bgColor = AppColors.p1,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0x15060F14),
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black1,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              const Spacer(),
                              const Text(
                                "From ",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Text(
                                price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.p1,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          5.h,
                          SvgPicture.asset("assets/icons/tag.svg"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  actionText,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.p1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppButton.outline(
                  onPressed: () {},
                  width: 100,
                  title: "Decline",
                  elevation: 0,
                  borderColor: AppColors.p1,
                  height: 32,
                  background: Colors.white,
                ),
                AppButton.primary(
                  onPressed: () {},
                  width: 100,
                  title: "Decline",
                  elevation: 0,
                  height: 32,
                  background: AppColors.p1,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
