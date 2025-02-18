import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class ByLocationView extends StatefulWidget {
  final String? selectedLocation;

  const ByLocationView({super.key, this.selectedLocation});

  @override
  State<ByLocationView> createState() => _ByLocationViewState();
}

class _ByLocationViewState extends State<ByLocationView> {
  final TextEditingController _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the text field with the selected location
    _locationController.text = widget.selectedLocation ?? '';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'By Location',
      ),
      body: InkWell(
        onTap: () => _showBottomSheet(context),
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

  void _showBottomSheet(BuildContext context) {
    Get.bottomSheet(
      isScrollControlled: true,
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: context.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              SvgPicture.asset(Assets.icons.indicator),
              const SizedBox(height: 30),
              Text(
                'Set Location',
                style: context.titleSmall,
              ),
              const SizedBox(height: 40),
              CustomTextField(
                controller: _locationController,
                hintText: 'Times Square NYC, Manhattan',
                hintTextColor: Colors.black,
                suffixIcon: Assets.icons.location2,
                textColor: Colors.black,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.purple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  if (_locationController.text.isNotEmpty) {
                    // Pass the location back to FiltersScreen
                   // Get.back(result: _locationController.text);
                   Get.back();
                  }
                },
                child: const Text("Done"),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
