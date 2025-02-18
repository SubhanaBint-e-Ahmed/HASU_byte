import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/AddGuest.dart';

class CreateGroupCard extends StatelessWidget {
  const CreateGroupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF246BFD), // Blue color
              Color(0xFF5089FF), // Light Blue color
            ],
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(4, 8),
              blurRadius: 24,
              spreadRadius: 0,
              color: Color(0x5C584CF4),
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'CREATE\nGROUP',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    height: 48 / 40,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/guser.svg',
                  width: 51.33,
                  height: 37.33,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Add guests & pay',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 25.2 / 18,
                letterSpacing: 0.2,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const AddGuestsScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: const Text(
                  'Order now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF246BFD),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
