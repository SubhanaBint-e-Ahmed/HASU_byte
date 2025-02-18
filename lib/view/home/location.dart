import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/language.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String? selectedType;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Location',
      ),
      body: InkWell(
        onTap: () => showBottomSheet(context),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.maskGroup.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  showBottomSheet(BuildContext context) {
    return Get.bottomSheet(
      isScrollControlled: false,
      Container(
        decoration: BoxDecoration(
          color: context.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              20.h,
              SvgPicture.asset(Assets.icons.indicator),
              30.h,
              Text('Location', style: context.titleSmall),
             
              30.h,
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Type',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16, 
                      ),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200], 
                        border: InputBorder.none, 
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0), 
                          borderSide: BorderSide.none,
                        ),
                      ),
                      dropdownColor: Colors.grey[200], 
                      value: selectedType,
                      hint: const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.bold,
                            fontSize: 12, 
                        ),
                      ),
                      items: ['Home', 'Office'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontSize: 12, 
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedType = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
               30.h,
              CustomTextField(
                hintText: 'Times Square NYC, Manhattan',
                hintTextColor: Colors.black,
                suffixIcon: Assets.icons.location2,
                textColor: Colors.black,
              ),
              30.h,
              AppButton.primary(
                title: 'Apply',
                onPressed: () {
                  Get.to(() => const LanguageScreen());
                },
               
              ),
              40.h,
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}
