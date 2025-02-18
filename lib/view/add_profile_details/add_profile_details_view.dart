import 'package:country_code_picker/country_code_picker.dart';
import 'package:cocoon/widgets/custom_drop_down.dart';
import '../set_location/set_locatoin.dart';
import 'package:cocoon/view/user_verification/create_new_pin_screen.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/add_profile_details/GenderController.dart';
import 'package:cocoon/view_models/models/welcome_view_model/signup_view_model.dart';
import 'package:cocoon/utils/mixins/date_time_picker_mixin.dart'; 

class AddProfileDetailsView extends StatelessWidget with DateTimeMixin { 
  const AddProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final genderController = Get.put(GenderDropDownController());

    // Create a TextEditingController for the Date of Birth field
    final TextEditingController dateController = TextEditingController();

    return GetBuilder<SignUpViewModel>(
      init: SignUpViewModel(),
      builder: (controller) => Scaffold(
        backgroundColor: const Color(0xffFEFEFE),
        appBar: const SimpleAppBar(
          title: 'Profile',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: controller.imgFile != null
                              ? Image.file(
                                  controller.imgFile!,
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )
                              : Assets.images.person.image(
                                  height: 150, width: 150, fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                            onTap: controller.setImageFile,
                            child: SvgPicture.asset(
                              Assets.icons.editSquare,
                              color: AppColors.purple,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  hintText: 'Full Name',
                ),
                const SizedBox(height: 10),
                GetBuilder<GenderDropDownController>(
                  builder: (genderController) => CustomDropDown(
                    items: genderController.genderList,
                    hint: 'Gender',
                    selectedValue: genderController.selectedGender,
                    onChange: (DropDownItemModel? selected) {
                      if (selected != null) {
                        genderController.setSelectedGender(selected);
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  controller: dateController,  // Use the dateController
                  hintText: 'Date of Birth',
                  suffixIcon: Assets.icons.Calender,
                  textColor: Colors.black,
                  onTap: () {
                    // Handle Date Picker Popup
                    _selectDate(context, dateController);
                  },
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150.0,
                        child: CountryCodePicker(
                          onChanged: (v) {
                            controller.setCountry(v.name);
                          },
                          initialSelection: 'US',
                          favorite: const ['+1', 'US'],
                          showDropDownButton: true,
                          padding: const EdgeInsets.all(0),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: '+1 000 000 000',
                            hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 163, 163, 163),
                            ),
                            filled: true,
                            fillColor: const Color(0xffFAFAFA),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => Get.to(() => const SetLocationView()),
                  child: CustomTextField(
                      hintText: 'Location', suffixIcon: Assets.icons.location2, enabled: false),
                ),
                const SizedBox(height: 50.0),
                Center(
                  child: AppButton.primary(
                    title: 'Continue',
                    onPressed: () => Get.to(() => const CreateNewPinScreen()),
                  ),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Update _selectDate method to accept TextEditingController
  void _selectDate(BuildContext context, TextEditingController dateController) async {
    final DateTime? selectedDate = await pickDate(context);
    if (selectedDate != null) {
      // Update the text field with the selected date
      dateController.text = '${selectedDate.toLocal()}'.split(' ')[0]; // Format the date
    }
  }
}
