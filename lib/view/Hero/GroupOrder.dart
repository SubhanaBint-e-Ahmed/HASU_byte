import 'package:flutter/material.dart';
import 'package:cocoon/view/Hero/widget/groupOrder/CreateGroupCard.dart';
import 'package:cocoon/view/Hero/widget/groupOrder/TechCard.dart';
import 'package:cocoon/view/Hero/widget/groupOrder/MyGroupCard.dart';

class GroupOrderScreen extends StatelessWidget {
  const GroupOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title:  const Text(
              'Group Order',
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 28.8 / 24,
              ),
              textAlign: TextAlign.left,
            ),
             centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStyledText(
              'Order for your friends/family or office group who are at multiple locations.',
            ),
            const SizedBox(height: 20),
            const CreateGroupCard(),
            const SizedBox(height: 20),
            const Text(
              'Requests (1)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const RequestCard(),
            const SizedBox(height: 20),
            const Text(
              'My Groups (1)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const MyGroupCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildStyledText(String text) {
    return Container(
      width: 380,
      height: 44,
      alignment: Alignment.center,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'Gellix',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 22.4 / 16,
          letterSpacing: 0.2,
          color: Color(0xFF9E9E9E),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
