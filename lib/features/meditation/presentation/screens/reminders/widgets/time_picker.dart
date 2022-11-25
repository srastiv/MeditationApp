import 'package:flutter/cupertino.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({Key? key}) : super(key: key);

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  late DateTime initialDate;
  @override
  void initState() {
    super.initState();
    DateTime initial = DateTime.now();
    initialDate =
        DateTime(initial.year, initial.month, initial.day, initial.hour, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kGrey,
      ),
      child: CupertinoDatePicker(
          use24hFormat: false,
          mode: CupertinoDatePickerMode.time,
         // initialDateTime: initialDate,
          minuteInterval: 1,
          onDateTimeChanged: (DateTime selected) {}),
    );
  }
}
