import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Your Item",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 21.6 / 18,
                  letterSpacing: 0.0,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 380, // Set width to 380
                height: 90, // Set height to 90
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),

                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/images/CheeBurger.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cheese Burger',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              height: 25.2 / 18,
                              letterSpacing: 0.0,
                            ),
                          ),
                          Text(
                            '1 Item',
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 19.2 / 18,
                              letterSpacing: 0.0,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
