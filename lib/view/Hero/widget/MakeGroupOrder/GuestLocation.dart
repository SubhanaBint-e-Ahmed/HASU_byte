import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';


class GuestLocationList extends StatelessWidget {
  final List<GuestLocation> guestLocations;

  const GuestLocationList({super.key, required this.guestLocations});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(), 
      itemCount: guestLocations.length,
      itemBuilder: (context, index) {
        return GuestLocationTile(guestLocations[index]);
      },
    );
  }
}

class GuestLocationTile extends StatelessWidget {
  final GuestLocation guestLocation;

  const GuestLocationTile(this.guestLocation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 114,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1404060F), 
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/avtar.png'),
                ),
                const SizedBox(width: 10), 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      guestLocation.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4), 
                    Text(
                      guestLocation.contactNumber,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        
          Container(
            width: 380,
            height: 44,
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 20), 
            decoration: BoxDecoration(
              color: const Color.fromARGB(132, 224, 222, 255), 
              borderRadius: BorderRadius.circular(8), 
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    guestLocation.address,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.purple,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/Edit.svg',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class GuestLocation {
  final String photoUrl;
  final String name;
  final String contactNumber;
  final String address;

  GuestLocation({
    required this.photoUrl,
    required this.name,
    required this.contactNumber,
    required this.address,
  });
}
