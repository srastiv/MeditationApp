import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/texts.dart';

class SilentLOGOMoon extends StatelessWidget {
  const SilentLOGOMoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(child: kSilent),
        SvgPicture.asset("assets/icons/applogo.svg"),
        const FittedBox(child: kMoon),
      ],
    );
  }
}

class SilentLOGOMoonLight extends StatelessWidget {
  const SilentLOGOMoonLight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        kSilentWhite,
        SvgPicture.asset("assets/icons/applogoWHITE.svg"),
        kMoonWhite,
      ],
    );
  }
}
