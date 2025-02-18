import 'package:flutter/material.dart';
import 'package:get/get.dart';
import'package:cocoon/view/Cart/DriverInstruction.dart';

class VoucherScreen extends StatefulWidget {
  const VoucherScreen({super.key});

  @override
  _VoucherScreenState createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
  int selectedVoucher = -1;
  final TextEditingController _voucherCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Voucher',
          style: TextStyle(
            fontFamily: 'Gellix',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            height: 28.8 / 24,
            letterSpacing: 0,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 380,
                height: 25,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Text(
                  'Enter the code in order to claim and use your voucher',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 19.6 / 14,
                    letterSpacing: 0.2,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _voucherCodeController,
                decoration: InputDecoration(
                  hintText: 'Voucher Code',
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
                onChanged: (text) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 24),
              if (_voucherCodeController.text.isNotEmpty) ...[
                const Text(
                  'Select Voucher',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 22.4 / 14,
                    letterSpacing: 0.2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                _buildImageSection(),
              ],
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 428,
        height: 90,
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {Get.to(() =>  const DriverInstructionsScreen());},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF642D91),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              minimumSize: const Size(226, 50),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
            child: const Text(
              'Continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 22.4 / 16,
                letterSpacing: 0.2,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Column(
      children: [
        Container(
          width: 370,
          height: 306.06,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x1404060F),
                blurRadius: 60,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            'assets/images/voucher 1.png',
            width: 380,
            height: 300.06,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 380,
          height: 306.06,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x1404060F),
                blurRadius: 60,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            'assets/images/voucher 2.png',
            width: 380,
            height: 306.06,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
