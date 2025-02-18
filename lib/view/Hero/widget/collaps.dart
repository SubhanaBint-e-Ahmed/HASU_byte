import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class CollapsibleSection extends StatefulWidget {
  const CollapsibleSection({super.key});

  @override
  State<CollapsibleSection> createState() => _CollapsibleSectionState();
}

class _CollapsibleSectionState extends State<CollapsibleSection> {
  bool isExpanded = false; 

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 380,
      height: isExpanded ? 402 : 200, 
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF04060F).withOpacity(0.08),
            offset: const Offset(0, 4),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Wrap the text content inside Flexible
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
  "My name is Rob - I'd love to be part of your project. Things to know: Only RUSSIAN voice. I do not do English with a Russian accent. I do not record NSFW, racist, religious, political, or discriminatory/hate content of any kind. I will read your script as written. Please be clear on how you want the performance and pronunciation. Audio is delivered via WAV file (raw and processing). I do not sign any documents Revision Policy: I will do revisions free of charge if I did something incorrectly or not to your original instructions. If you make changes to the script AFTER I've completed your order, it would be considered a new gig, and charges would apply. ${isExpanded
        ? ' Additional text can go here when the section is expanded. '
            'Add as much content as you need in this area.'
        : ''}",
  style: const TextStyle(
    fontFamily: 'Gellix',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 19.6 / 14,
    letterSpacing: 0.2,
    color: AppColors.black,
   
    decoration: TextDecoration.none,
  ),
   textAlign: TextAlign.left,
)

                ],
              ),
            ),
          ),
          
          // Divider
          const Divider(
            thickness: 1,
            color: Color(0xFFEEEEEE),
            height: 0,
          ),
          
          // See more/See less button
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              width: 360,
              height: 22,
              alignment: Alignment.center,
              child: Text(
                isExpanded ? 'See less' : 'See more',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 22.4 / 16,
                  letterSpacing: 0.2,
                  color: AppColors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
