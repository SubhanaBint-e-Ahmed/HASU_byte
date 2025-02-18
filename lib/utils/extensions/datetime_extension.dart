import 'package:intl/intl.dart';


extension FormattedDate on DateTime {
  String formatDate() {
    final formatter = DateFormat.yMMMMd();
    return formatter.format(this);
  }

  String formatAttendanceDate() {
    final formatter = DateFormat('M/d/yyyy');
    return formatter.format(this);
  }
}

extension CovertToDate on String {
  DateTime fromFormattedDate() {
    final formatter = DateFormat.yMMMMd();
    return formatter.tryParse(this) ?? DateTime.now();
  }

  DateTime toDateFromAttendanceFormat() {
    final formatter = DateFormat('M/d/yyyy');
    return formatter.tryParse(this) ?? DateTime.now();
  }
}

extension FormatTimeOfDay on TimeOfDay {
  String formatTime() {
    final hour = hourOfPeriod;
    final minute = this.minute.toString().padLeft(2, '0');
    final period = this.period == DayPeriod.am ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }
}
