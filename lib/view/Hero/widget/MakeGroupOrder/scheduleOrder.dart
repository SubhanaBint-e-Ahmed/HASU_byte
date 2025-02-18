import 'package:intl/intl.dart';
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';

class ScheduleOrderWidget extends StatefulWidget {
  const ScheduleOrderWidget({super.key});

  @override
  State<ScheduleOrderWidget> createState() => _ScheduleOrderWidgetState();
}

class _ScheduleOrderWidgetState extends State<ScheduleOrderWidget> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  bool _isExpanded = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1404060F),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                "Schedule Your Order",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Spacer(),
              Transform.scale(
                scale: 1.2,
                child: Radio<bool>(
                  value: true,
                  groupValue: _isExpanded,
                  activeColor: AppColors.purple,
                  onChanged: (value) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),
              ),
            ],
          ),
          if (_isExpanded) ...[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date Input Field
                Flexible(
                  child: GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Container(
                      width: 161,
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedDate == null
                                ? "Select Date"
                                : DateFormat('yyyy-MM-dd').format(_selectedDate!),
                            style: const TextStyle(color: Colors.black),
                          ),
                          SvgPicture.asset(
                            'assets/icons/bCalendar.svg', // Path to your SVG file
                            width: 20,
                            height: 20,
                          
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4), // Space between the fields
                // Time Input Field
                Flexible(
                  child: GestureDetector(
                    onTap: () => _selectTime(context),
                    child: Container(
                      width: 161,
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedTime == null
                                ? "Select Time"
                                : _selectedTime!.format(context),
                            style: const TextStyle(color: Colors.black),
                          ),
                          SvgPicture.asset(
                            'assets/icons/Clock.svg', // Path to your SVG file
                            width: 20,
                            height: 20,
                       
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
