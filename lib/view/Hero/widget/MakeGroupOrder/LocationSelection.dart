import 'package:flutter/material.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class LocationSelectionWidget extends StatefulWidget {
  const LocationSelectionWidget({super.key});

  @override
  State<LocationSelectionWidget> createState() => _LocationSelectionWidgetState();
}

class _LocationSelectionWidgetState extends State<LocationSelectionWidget> {
  bool _isDeliverySelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1404060F),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Location',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.4,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Same for everyone',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  height: 1.4,
                  letterSpacing: 0.2,
                  color: Color(0xFF9E9E9E),
                ),
              ),
              Transform.scale(
                scale: 1.2, 
                child: Radio(
                  value: true,
                  groupValue: _isDeliverySelected,
                  activeColor: AppColors.purple,
                  onChanged: (value) {
                    setState(() {
                      _isDeliverySelected = value as bool;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Custom Locations',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  height: 1.4,
                  letterSpacing: 0.2,
                  color: Color(0xFF9E9E9E),
                ),
              ),
              Transform.scale(
                scale: 1.2, // Scales the radio button by 1.2 times
                child: Radio(
                  value: false,
                  groupValue: _isDeliverySelected,
                  activeColor: AppColors.purple,
                  onChanged: (value) {
                    setState(() {
                      _isDeliverySelected = value as bool;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
