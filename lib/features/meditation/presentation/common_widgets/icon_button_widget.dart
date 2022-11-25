import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CommonIconButtonWidget extends StatelessWidget {
  const CommonIconButtonWidget({
    Key? key,
    required this.icon,
    required this.onpressed,
    required this.color,
  }) : super(key: key);

  final Function()? onpressed;
  final Color color;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? kTransparent
              : kGrey,
        ),
        color: color,
        borderRadius: BorderRadius.circular(38),
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: icon,
      ),
    );
  }
}
