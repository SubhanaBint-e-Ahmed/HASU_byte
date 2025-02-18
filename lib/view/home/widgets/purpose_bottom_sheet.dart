import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class PurposeBottomSheet extends StatelessWidget {
  const PurposeBottomSheet({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFE0E0E0)),
          ),
          20.h,
          const Text(
            "Average current fare calculated is:\$ 16.3",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          20.h,
          const Text(
            "We recommend raising your fare to \$ 14.7",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black1,
              fontWeight: FontWeight.w400,
            ),
          ),
          40.h,
          AppButton.primary(
            onPressed: onTap,
            width: 200,
            title: "Raise to \$ 14.7",
            elevation: 0,
            textColor: Colors.white,
            height: 45,
            background: AppColors.p1,
          ),
          20.h,
        ],
      ),
    );
  }
}
