import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InstructionsScreen extends StatelessWidget {
  final SvgPicture arrowIcon; // Add the SvgPicture parameter for the arrow icon

  const InstructionsScreen({super.key, required this.arrowIcon}); // Constructor to pass the parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 380,
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      spreadRadius: 2,
                      blurRadius: 60,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Driver.svg',
                      width: 28,
                      height: 28,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Driver Instructions',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          height: 25.2 / 18,
                          letterSpacing: 0.2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    arrowIcon, // Use the passed arrow icon here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
