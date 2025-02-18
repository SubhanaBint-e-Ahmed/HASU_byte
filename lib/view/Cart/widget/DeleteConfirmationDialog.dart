import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const DeleteConfirmationDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 319,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 48),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 38,
            height: 3,
            color: AppColors.gry,
          ),
          const SizedBox(height: 25),
          const Text(
            "Remove from Cart?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w700,
              fontSize: 22,
              height: 1.2,
              letterSpacing: 0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 26),
          Container(
            width: 380,
            height: 1,
            color: const Color(0xFFEEEEEE),
          ),
          const SizedBox(height: 26),
         const Text(
            "Are you sure you want to remove this item?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.4,
              letterSpacing: 0.2,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 26),
          Container(
            width: 380,
            height: 1,
            color: const Color(0xFFEEEEEE),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  minimumSize: const Size(143.5, 58),
                ),
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    color: AppColors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onConfirm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF0000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  minimumSize: const Size(143.5, 58),
                ),
                child: const Text(
                  "Yes, Remove",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
