import 'package:flutter/material.dart';

class HomeMainContainer extends StatelessWidget {
  const HomeMainContainer({
    super.key,
    required this.color,
    required this.t1,
    required this.t2,
    required this.t1Color,
    required this.t2Color,
    required this.onTap,
  });
  final VoidCallback onTap;
  final Color color;
  final String t1;
  final String t2;
  final Color t1Color;
  final Color t2Color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 134,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0x15060F14),
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 0),
            )
          ],
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Text(
              t1,
              style: TextStyle(
                  fontSize: 18, color: t1Color, fontWeight: FontWeight.w600),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                t2,
                style: TextStyle(
                    fontSize: 24, color: t2Color, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
