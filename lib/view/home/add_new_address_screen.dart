import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class AddNewAddressScreen extends StatefulWidget {
  final bool isEdit;

  const AddNewAddressScreen({super.key, required this.isEdit});

  @override
  _AddNewAddressScreenState createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
   String? selectedType;

  @override
  Widget build(BuildContext context) {
     bool isToggled = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isEdit ? "Edit Address" : "Add New Address",
          style: const TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
             8.h,
             
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
                        fillColor: const Color.fromARGB(255, 248, 248, 248), 
                        border: InputBorder.none, 
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0), 
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
             15.h,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Country",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextField(
                          hintText: 'England',
                          hintTextColor: Color.fromARGB(255, 231, 231, 231),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextField(
                          hintText: 'London',
                          hintTextColor: Color.fromARGB(255, 231, 231, 231),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                7.h,
              const Text(
                "Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
                7.h,
              const CustomTextField(
                hintText: '+1 111 467 378 399',
                hintTextColor: Color.fromARGB(255, 231, 231, 231),
                textColor: Colors.black,
              ),
             7.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextField(
                          hintText: '+1 111 467 378 399',
                          hintTextColor: Color.fromARGB(255, 231, 231, 231),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  24.w,
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zip/Postal Code",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextField(
                          hintText: '77852',
                          hintTextColor: Color.fromARGB(255, 231, 231, 231),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               1.h,
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligning at the end
              children: [
                const Text(
                  'Save as primary address',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                   const SizedBox(width: 4),
                
                Transform.scale(
                  scale: 1, 
                  child: Switch(
                    value: isToggled, 
                    onChanged: (bool value) {
                     
                      isToggled = value;
                    },
                    activeColor: AppColors.purple, 
                    inactiveThumbColor: Colors.white, 
                    inactiveTrackColor: AppColors.lightGray, 
                    thumbColor: MaterialStateProperty.all(Colors.white), 
                    trackColor: MaterialStateProperty.all(AppColors.lightGray), 
                  ),
                ),
              ],
            ),
              195.h,
              Padding(
  padding: const EdgeInsets.all(16.0),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        minimumSize: const Size(250, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: const Text(
        "Apply",
        style: TextStyle(color: AppColors.white),
      ),
    ),
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}
