import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/constants/app_colors.dart';

class BudgetFilter extends StatefulWidget {
  const BudgetFilter({super.key});

  @override
  State<BudgetFilter> createState() => _BudgetFilterState();
}

class _BudgetFilterState extends State<BudgetFilter> {
  double _minSliderValue = 575;
  double _maxSliderValue = 1500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'By Budget',
          style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Row(
                          children: [
                            const Text(
                              'Min: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9.0, vertical: 7.0),
                              decoration: BoxDecoration(
                                color: AppColors.purple,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                '\$${_minSliderValue.toInt()}',
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 40.0),
                        child: Row(
                          children: [
                            const Text(
                              'Max: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9.0, vertical: 7.0),
                              decoration: BoxDecoration(
                                color: AppColors.purple,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                '\$${_maxSliderValue.toInt()}',
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$0',
                          style: TextStyle(
                            color: AppColors.purple,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$2000',
                          style: TextStyle(
                            color: AppColors.purple,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: AppColors.purple,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: AppColors.purple,
                      trackHeight: 6.0,
                      overlayColor: AppColors.white.withOpacity(0.2),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
                      rangeThumbShape: const RoundRangeSliderThumbShape(
                        enabledThumbRadius: 15.0,
                        elevation: 3.0,
                        pressedElevation: 6.0,
                      ),
                      rangeValueIndicatorShape: const PaddleRangeSliderValueIndicatorShape(),
                      rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                    ),
                    child: RangeSlider(
                      values: RangeValues(_minSliderValue, _maxSliderValue),
                      min: 0,
                      max: 2000,
                      divisions: 20,
                      labels: RangeLabels(
                        _minSliderValue.round().toString(),
                        _maxSliderValue.round().toString(),
                      ),
                      onChanged: (RangeValues newValues) {
                        setState(() {
                          _minSliderValue = newValues.start;
                          _maxSliderValue = newValues.end;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                foregroundColor: AppColors.white,
                minimumSize: const Size(180, 50),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                // Return the selected budget values to FiltersScreen
                Get.back(result: {'min': _minSliderValue, 'max': _maxSliderValue});
              },
              child: const Text('Done'),
            ),
          ),
        ],
      ),
    );
  }
}
