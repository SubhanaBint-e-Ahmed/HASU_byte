import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Cart/Checkout2.dart';

class DriverInstructionsScreen extends StatefulWidget {
  const DriverInstructionsScreen({super.key});

  @override
  _InstructionsScreenState createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<DriverInstructionsScreen> {
  int selectedCollectionInstruction = 0; 
  int selectedDeliveryInstruction = 0; 

  final List<String> collectionInstructions = [
    "No Preference",
    "Ring the door bell",
    "Knock on the door bell",
    "Do not disturb, bags out",
    "Call me when you arrive"
  ];

  final List<String> deliveryInstructions = [
    "No Preference",
    "Ring the door bell",
    "Knock on the door bell",
    "Do not disturb, packages out",
    "Call me when you arrive"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Driver Instructions',
          style: TextStyle(
            fontFamily: 'Gellix',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            height: 28.8 / 24,
            letterSpacing: 0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text(
              'Collection Instructions',
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 25.2 / 18,
                letterSpacing: 0.2,
              ),
            ),

            const SizedBox(height: 5),
            _buildRadioButtons(
                collectionInstructions, selectedCollectionInstruction, (value) {
              setState(() {
                selectedCollectionInstruction = value;
              });
            }),
            const SizedBox(height: 16),
            Container(
              width: 380, 
              height: 1, 
              color: const Color(0xFFEEEEEE), 
            ),
            const SizedBox(height: 16),
            const Text(
              'Delivery',
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 25.2 / 18,
                letterSpacing: 0.2,
              ),
            ),
            const SizedBox(height: 8),
            _buildRadioButtons(
                deliveryInstructions, selectedDeliveryInstruction, (value) {
              setState(() {
                selectedDeliveryInstruction = value;
              });
            }),
            const Spacer(), 
           Container(
        width: 428,
        height: 90,
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {Get.to(() =>  const Checkout2Screen());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF642D91),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              minimumSize: const Size(226, 50),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
            child: const Text(
              'Done',
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
      )
          ],
        ),
      ),
    );
  }

  Widget _buildRadioButtons(
      List<String> instructions, int selectedIndex, Function(int) onChanged) {
    return Column(
      children: List.generate(instructions.length, (index) {
        return Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, 
          children: [
            Expanded(
              child: Text(
                instructions[index],
                style: const TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 19.2 / 18,
                  letterSpacing: 0.2,
                ),
              ), 
            ),
            Radio(
              value: index,
              groupValue: selectedIndex,
              onChanged: (int? value) {
                if (value != null) {
                  onChanged(value);
                }
              },
            ),
          ],
        );
      }),
    );
  }
}
