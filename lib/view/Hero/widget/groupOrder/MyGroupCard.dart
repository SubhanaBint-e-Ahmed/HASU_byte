import 'package:flutter/material.dart';

class MyGroupCard extends StatelessWidget {
  const MyGroupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: const Color.fromARGB(255, 249, 248, 255),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: Color(0xFF642D91), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Text(
                'Design Team\non 29 Aug',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 22.4 / 16,
                  letterSpacing: 0.2,
                  color: Color(0xFF642D91),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle invite again button press
              },
              child: const Text(
                'Invite Again',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 22.4 / 16,
                  letterSpacing: 0.2,
                  color: Color(0xFF642D91),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
