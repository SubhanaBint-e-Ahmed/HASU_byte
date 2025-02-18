import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF683394),
              Color(0xFF854AB6),
            ],
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 8),
              blurRadius: 24,
              spreadRadius: 0,
              color: Color(0x5C584CF4),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 236,
                  height: 58,
                  child: Text(
                    'Tech team have\ninvited you',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 28.8 / 24,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/Gift.svg',
                  width: 56,
                  height: 56,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 332,
              height: 25,
              child: Text(
                'Budget: \$26.7',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 25.2 / 18,
                  letterSpacing: 0.2,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(
              width: 332,
              height: 25,
              child: Text(
                '01:36 pm. 29 Aug',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 25.2 / 18,
                  letterSpacing: 0.2,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 152,
                  height: 35,
                  child: TextButton(
                    onPressed: () {
                      // Handle View Details button press
                    },
                    child: const Text(
                      'View Details',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 25.2 / 18,
                        letterSpacing: 0.2,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Order Now button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text(
                    'Order now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF683394),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
