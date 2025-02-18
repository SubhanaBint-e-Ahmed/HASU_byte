import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/Hero/MakeGroupOrder.dart';

class AddGuestsScreen extends StatefulWidget {
  const AddGuestsScreen({super.key});

  @override
  _AddGuestsScreenState createState() => _AddGuestsScreenState();
}

class _AddGuestsScreenState extends State<AddGuestsScreen> {
  List<Guest> guests = [
    Guest(
        name: 'Lauralee Quintero',
        phone: '+1-300-555-0136',
        isSelected: false,
        image: null),
    Guest(
        name: 'Annabel Rohan',
        phone: '+1-202-585-013',
        isSelected: false,
        image: 'assets/images/add1.png'),
    Guest(
        name: 'Alfonzo Schuessler',
        phone: '+1-300-585-0119',
        isSelected: true,
        image: 'assets/images/add2.png'),
    Guest(
        name: 'Augustina Midgett',
        phone: '+4-300-655-0501',
        isSelected: false,
        image: 'assets/images/add3.png'),
    Guest(
        name: 'Freida Varnes',
        phone: '+1-300-555-013',
        isSelected: true,
        image: 'assets/images/add4.png'),
    Guest(
        name: 'Francene Vandyne',
        phone: '+1-202-566-0167',
        isSelected: true,
        image: 'assets/images/add5.png'),
    Guest(
        name: 'Geoffrey Mott',
        phone: '+1-202-555-0119',
        isSelected: false,
        image: null),
    Guest(
        name: 'Rayford Chenall',
        phone: null,
        isSelected: false,
        image: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Add Guests',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Search',
              hintTextColor: AppColors.gry,
              textColor: Colors.black,
              fillColor: AppColors.lightGray,
              borderRadius: 10.0,
              prefixIcon: 'assets/icons/search.svg',
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: guests.length,
                itemBuilder: (context, index) {
                  return _buildGuestTile(guests[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const MakeGroupOrderScreen());
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 55),
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                backgroundColor: const Color(0xFF642D91),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGuestTile(Guest guest) {
    return Container(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF683394),
                  Color(0xFF854AB6),
                ],
              ),
            ),
            child: guest.image != null
                ? ClipOval(
                    child: Image.asset(
                      guest.image!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  guest.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (guest.phone != null)
                  Text(
                    guest.phone!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          ),
          Checkbox(
            value: guest.isSelected,
            onChanged: (value) {
              setState(() {
                guest.isSelected = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Guest {
  final String name;
  final String? phone;
  bool isSelected;
  final String? image;

  Guest(
      {required this.name,
      required this.phone,
      required this.isSelected,
      required this.image});
}
