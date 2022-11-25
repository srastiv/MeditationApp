import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import 'icon_button_widget.dart';

class CommonRowOfIconButtonWidgets extends StatelessWidget {
  const CommonRowOfIconButtonWidgets({
    Key? key,
    required this.widget,
    required this.color,
  
    required this.onTap,
  }) : super(key: key);

  final Widget widget;
  final Color color;
 
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: kPureWhite,
            radius: 27,
            child: widget,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.3),
        CommonIconButtonWidget(
          icon: SvgPicture.asset("assets/icons/heart.svg"),
          color: color,
          onpressed: () {},
        ),
        CommonIconButtonWidget(
          icon: SvgPicture.asset("assets/icons/download.svg"),
          color: color,
          onpressed: () {},
        ),
      ],
    );
  }
}
