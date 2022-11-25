import 'package:flutter/material.dart';

class CustomCheckBoxWidget extends StatefulWidget {
  const CustomCheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CustomCheckBoxWidget> createState() => _CustomCheckBoxWidgetState();
}

bool? isChecked = false;

class _CustomCheckBoxWidgetState extends State<CustomCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      value: isChecked,
      onChanged: (val) {
        setState(
          () {
            isChecked = val;
          },
        );
      },
    );
  }
}
