import 'package:flutter/material.dart';

class PriceBreakdownScreen extends StatelessWidget {
  const PriceBreakdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 380,
      height: 210,  // Increased height to prevent overflow
      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPriceRow('Subtotal', '\$7.5'),
            _buildPriceRow('Delivery', '\$1.5'),
            _buildPriceRow('Tax', '\$0.7'),
            _buildPriceRow('Service Fee', '\$1.0'),
            const SizedBox(height: 2), 
            Divider(color: Colors.grey[300]),
            const SizedBox(height: 2),
            _buildPriceRow('Total', '\$10.7', isTotal: true),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, String price, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 22.4 / 16,
              letterSpacing: 0.2,
         color: isTotal ? Colors.black : const Color(0xFF9E9E9E),
            ),
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 22.4 / 16,
              letterSpacing: 0.2,
              color: isTotal ? Colors.black : Colors.black, 
            ),
          ),
        ],
      ),
    );
  }
}
