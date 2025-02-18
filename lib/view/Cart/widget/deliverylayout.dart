import 'package:cocoon/res/constants/imports.dart';

class CheckoutLayout extends StatelessWidget {
  const CheckoutLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      padding: const EdgeInsets.all(10), 
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(44),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          Expanded(
            flex: 2, 
            child: Container(
              height: 32, 
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20), 
              decoration: BoxDecoration(
                color: const Color(0xFF642D91),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                    height: 30,
                    child: SvgPicture.asset('assets/icons/Deliver (1).svg'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Delivery',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w600,
                      fontSize: 16, // Increased font size
                      height: 1.4, 
                      letterSpacing: 0.2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 4), 
          Expanded(
            flex: 2, 
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 18, 
                    height: 18,
                    child: SvgPicture.asset('assets/icons/Pickup.svg'),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Pickup',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 1.4,
                      letterSpacing: 0.2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
