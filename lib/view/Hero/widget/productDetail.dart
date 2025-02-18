import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:cocoon/res/constants/app_colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String selectedSize = 'Small';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A04060F),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Size selection buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ['Small', 'Medium', 'Large'].map((size) {
              return ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedSize = size;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedSize == size
                      ? Colors.grey[200]
                      : const Color.fromARGB(237, 255, 255, 255),
                  foregroundColor: selectedSize == size
                      ? AppColors.purple
                      : Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(size),
              );
            }).toList(),
          ),

          // Divider below the size buttons
          const SizedBox(height: 16),
          const Divider(
            color: Color(0xFFEEEEEE),
            thickness: 1,
            height: 1,
          ),
          const SizedBox(height: 16),

          // Product details
          _buildDetailRow('Price', '\$20/hr', isPurple: true),
          _buildDetailRow('Type', 'Apartment'),
          _buildDetailRow('Rooms', '2'),
          _buildDetailRow('Bathrooms', '1'),
          _buildDetailRow('Delivery time', ' 1 day'),

          // Divider above the Add to Cart button
          const SizedBox(height: 24),
          const Divider(
            color: Color(0xFFEEEEEE),
            thickness: 1,
            height: 1,
          ),
          const SizedBox(height: 24),

          // Add to cart button
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // Handle add to cart logic
              },
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                height: 24.0,
                width: 24.0,
              ),
              label: const Text('Add to cart'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                fixedSize: const Size(311, 58),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildDetailRow(String label, String value, {bool isPurple = false}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Label
        Expanded(
          flex: 1,
          child: Text(
            '• $label',
            style: const TextStyle(
              fontFamily: 'Gellix',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 22.4 / 16,
              letterSpacing: 0.2,
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
            ),
            maxLines: 1,
           overflow: TextOverflow.visible,
          ),
        ),
        // Value
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 22.4 / 16,
                letterSpacing: 0.2,
                decoration: TextDecoration.none,
                textBaseline: TextBaseline.alphabetic,
                color: isPurple ? AppColors.purple : Colors.black,
              ),
              maxLines: 1, // Ensure the text is displayed in one line
              overflow: TextOverflow.ellipsis, // Add ellipsis for overflow text
            ),
          ),
        ),
      ],
    ),
  );
}

}
