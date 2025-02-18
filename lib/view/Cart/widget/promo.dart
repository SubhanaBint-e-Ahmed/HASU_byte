import 'package:flutter/material.dart';

class PromoAndAllergiesScreen extends StatefulWidget {
  const PromoAndAllergiesScreen({super.key});

  @override
  _PromoAndAllergiesScreenState createState() =>
      _PromoAndAllergiesScreenState();
}

class _PromoAndAllergiesScreenState extends State<PromoAndAllergiesScreen> {
  bool hasAllergies = false;

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
              "Promo",
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 21.6 / 18,
                letterSpacing: 0.0,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Add promo code to get discount on your purchase.',
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 14.4 / 12,
                letterSpacing: 0.2,
                color: Color(0xFF9E9E9E),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type here',
                hintStyle: const TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 19.6 / 14,
                  letterSpacing: 0.2,
                  color: Color(0xFF9E9E9E),
                ),
                filled: true,
                fillColor: const Color(0xFFFAFAFA),
                contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                  value: hasAllergies,
                  onChanged: (value) {
                    setState(() {
                      hasAllergies = value!;
                    });
                  },
                ),
                const Text(
                  'Allergies',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (hasAllergies)
              TextField(
                decoration: InputDecoration(
                  hintText: 'Add any note',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 19.6 / 14,
                    letterSpacing: 0.2,
                    color: Color(0xFF9E9E9E),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFAFAFA),
                  contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 2,
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
