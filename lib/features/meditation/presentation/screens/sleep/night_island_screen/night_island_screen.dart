import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/elevated_button_widget.dart';
import '../../../common_widgets/row_icon_button_widget.dart';
import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../../../constants/textstyle.dart';
import '../common_widgets/songs_gridview.dart';

class NightIslandScreen extends StatelessWidget {
  const NightIslandScreen({
    Key? key,
    required this.song,
  }) : super(key: key);
  final String song;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: kNightBlue,
        child: CommonElevatedButtonWidget(
          onpressed: () {},
          text: kPlay,
          color: kPurple,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: SvgPicture.asset("assets/vectors/nightsland.svg"),
                ),
                const SizedBox(height: 160),
                Positioned(
                  //   bottom: 76,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: CommonRowOfIconButtonWidgets(
                      onTap: () {
                        context.pop();
                      },
                      color: const Color.fromARGB(99, 3, 22, 76),
                      widget: const Icon(
                        Icons.arrow_back,
                        color: kBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 150),
                  GestureDetector(
                      onTap: () {
                        context.push("/rubbish");
                      },
                      child: Text(
                        song,
                        style: kw700size34,
                      )),
                  const SizedBox(height: 15),
                  k45minsleepmusic,
                  const SizedBox(height: 20),
                  kEaseTheMind,
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/pinkHeart.svg",
                            color: kPureWhite,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          kFavoritsNight,
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/headphones.svg",
                            color: kPureWhite,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          kLesteningNight,
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: kDarkGrey,
                  ),
                  const SizedBox(height: 10),
                  kRelated,
                ],
              ),
            ),
            const SongsGridViewWidget()
          ],
        ),
      ),
    );
  }
}
