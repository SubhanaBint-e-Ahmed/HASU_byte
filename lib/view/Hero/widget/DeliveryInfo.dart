import 'package:flutter/material.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14.0, 20.0, 14.0, 20.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: Colors.white.withOpacity(0.3), 
          width: 1.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1404060F), 
            offset: Offset(0, 4), 
            blurRadius: 60, 
          ),
        ],
        color: Colors.white, 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // First column
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$2.5 Delivery Fee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0, 
                ),
              ),
              Text(
                'Pricing & fees',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0, 
                ),
              ),
            ],
          ),
   
          Container(
            width: 1.0,
            height: 33.0,
            color: const Color(0xFFEEEEEE), 
          ),
        
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '35 min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0, 
                ),
              ),
              Text(
                'Delivery time',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0, 
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
