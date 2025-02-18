import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class LocationBar extends StatelessWidget {
  final VoidCallback onTap;

  const LocationBar({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
    
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGray),
              
              borderRadius: BorderRadius.circular(8),
              
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/location.svg",
                  color: AppColors.purple,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.purple,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.purple,
                  size: 16,
                ),
                const SizedBox(width: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: AppColors.purple,
                      size: 17,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "ENG",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Updated Search Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
           child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 2),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                    border: InputBorder.none, // No border
                    enabledBorder: InputBorder.none, // No border when enabled
                    focusedBorder: InputBorder.none, // No border when focused
                  ),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Open keyboard when clicked (optional)
                  },
                ),
              ),
            ],
          ),

        ),
      ],
    );

  }}
