import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int selectedMethod = -1;

  final List<String> paymentMethods = [
    "PayPal",
    "Google Pay",
    "Apple Pay",
    "My Wallet",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Scrollable Payment Options
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < paymentMethods.length; i++)
                    _buildPaymentMethodRow(i, paymentMethods[i]),
                  const SizedBox(height: 20),
                  Center(child: _buildAddNewCardButton()),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Continue Button (Fixed Position)
            Center(child: _buildContinueButton()),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodRow(int index, String method) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedMethod = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            const Icon(Icons.payment),
            const SizedBox(width: 16),
            Text(method, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Radio<int>(
              value: index,
              groupValue: selectedMethod,
              onChanged: (int? value) {
                if (value != null) {
                  setState(() {
                    selectedMethod = value;
                  });
                }
              },
              activeColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNewCardButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.add, color: Colors.purple),
      label: const Text('Add new card', style: TextStyle(color: Colors.purple)),
    );
  }

  Widget _buildContinueButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text('Continue'),
    );
  }
}
