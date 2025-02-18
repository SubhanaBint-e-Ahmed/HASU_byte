import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class ServiceCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final String description;

  const ServiceCardWidget({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(255, 252, 251, 251)),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 194, 189, 189).withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 130.0,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: AppColors.yellow),
                        SizedBox(width: 5.0),
                        Text('4.8', style: TextStyle(color: AppColors.purple,  fontSize: 12)),
                        SizedBox(width: 5.0),
                        Text('(900+)', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)),
                    const SizedBox(height: 8.0),
                    Text(description, style: const TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 80.0),
                  Row(
                    children: [
                      const Text('From', style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 5.0),
                      Text('\$$price/hr', style: const TextStyle(color: AppColors.purple, fontWeight: FontWeight.bold, fontSize: 13.0)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Positioned(top: 0, right: 0, child: Icon(Icons.favorite_border, color: Colors.grey, size: 20.0)),
        ],
      ),
    );
  }
}
