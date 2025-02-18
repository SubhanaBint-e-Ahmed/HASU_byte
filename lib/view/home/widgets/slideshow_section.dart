import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class SlideshowSection extends StatefulWidget {
  const SlideshowSection({super.key});

  @override
  State<SlideshowSection> createState() => _SlideshowSectionState();
}

class _SlideshowSectionState extends State<SlideshowSection> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemCount: 5, // Number of slides
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), 
                      spreadRadius: 5, 
                      blurRadius: 8, 
                      offset: const Offset(0, 6), 
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("assets/images/professional_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5, // Number of slides
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 2),
              height: 10,
              width: _currentIndex == index ? 20 : 8,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? AppColors.purple
                    : AppColors.lightGray,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
