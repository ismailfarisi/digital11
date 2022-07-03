extension DateTimeExtension on DateTime {
  String get dateTimeString {
    late final List<String> weekday = [
      "Sun",
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
      "Sat"
    ];
    late final List<String> month = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];

    return '${weekday[this.weekday - 1]}, $day ${month[this.month - 1]} $year $hour:$minute ';
  }
}
