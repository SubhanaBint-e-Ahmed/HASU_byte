import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddCardScreen(),
    );
  }
}

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a Card'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Added for scrollability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card Image (replace with your actual image path)
              Image.asset(
                'assets/card_image.png', // Replace with your image path
                fit: BoxFit.cover, // Or adjust as needed
                width: double.infinity, // Make image take full width
              ),
              const SizedBox(height: 16),

              // Card Number Input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Card Number',
                  hintText: 'Enter your card number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number, // Show numeric keyboard
              ),
              const SizedBox(height: 16),

              // Card Holder Name Input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Card Name',
                  hintText: 'Enter card holder name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Expiry Date and CVV Input (in a Row)
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Expiry Date',
                        hintText: 'MM/YY',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today), // Calendar icon
                      ),
                      keyboardType: TextInputType.datetime, // Show date keyboard
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CVV',
                        hintText: 'Enter CVV',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number, // Show numeric keyboard
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Continue Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle continue button press
                  },
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}