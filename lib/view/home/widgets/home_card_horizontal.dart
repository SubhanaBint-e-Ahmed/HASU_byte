import 'package:cocoon/res/constants/imports.dart';

class HomeCardHorizontal extends StatelessWidget {
  const HomeCardHorizontal(
      {super.key,
      required this.color,
      required this.t1,
      required this.t2,
      required this.t1Color,
      required this.t2Color,
      required this.onTap});
  final Color color;
  final String t1;
  final String t2;
  final Color t1Color;
  final Color t2Color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 65,
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
        child: Row(
          children: [
            Text(
              t1,
              style: TextStyle(
                  fontSize: 18, color: t1Color, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Text(
              t2,
              style: TextStyle(
                  fontSize: 18, color: t2Color, fontWeight: FontWeight.w600),
            ),
            10.w,
            Icon(
              Icons.arrow_forward_ios,
              color: t2Color,
            )
          ],
        ),
      ),
    );
  }
}
