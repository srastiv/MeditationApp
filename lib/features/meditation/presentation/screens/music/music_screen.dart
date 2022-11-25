import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/row_icon_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

int musicLength = 0;

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? kNightBlue
              : kSand,
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 33,
          right: 33,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 0,
                  child: SvgPicture.asset(
                    "assets/vectors/ellipseTOP.svg",
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? kLightNightBlue
                        : null,
                  ),
                ),
                // Positioned(
                //     top: 20,
                //     child: SvgPicture.asset(
                //         "assets/vectors/  ellipseTOPRIGHT.svg")),
                CommonRowOfIconButtonWidgets(
                  onTap: () {
                    //    context.go("/bottomnav");
                    context.pop();
                  },
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kDarkestBlue
                      : kIconGrey,
                  widget: SvgPicture.asset("assets/icons/cancel.svg"),
                ),
              ],
            ),
            const SizedBox(height: 210),
            Text(
              "Focus Attention",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? kPureWhite
                        : kBlack,
              ),
            ),
            const SizedBox(height: 15),
            k7days0fCalm,
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  "assets/icons/backwardmus.svg",
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kPureWhite
                      : null,
                ),
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? SvgPicture.asset("assets/icons/MUSICplayerDARK.svg")
                    : SvgPicture.asset("assets/icons/MUSICplayer.svg"),
                SvgPicture.asset(
                  "assets/icons/forwardmus.svg",
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kPureWhite
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 58),
            SizedBox(
              height: 50,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackShape: const RectangularSliderTrackShape(),
                  trackHeight: 2.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 6.0),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 28.0),
                ),
                child: Slider(
                  value: musicLength.toDouble(),
                  max: 250,
                  min: 0,
                  thumbColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kPurple
                      : kBlack,
                  activeColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kPureWhite
                      : kBlack,
                  inactiveColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? kInactiveSliderColor
                      : kIconGrey,
                  onChanged: (sliderValue) {
                    setState(() {
                      musicLength = sliderValue.toInt();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 14.25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  musicLength.toInt().toString(),
                  style: kw400size16,
                ),
                Text(
                  musicLength.toInt().toString(),
                  style: kw400size16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
