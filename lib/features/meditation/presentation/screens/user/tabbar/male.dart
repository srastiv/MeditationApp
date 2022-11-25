import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/textstyle.dart';
import 'data.dart';

class MaleVoice extends StatefulWidget {
  const MaleVoice({Key? key}) : super(key: key);

  @override
  State<MaleVoice> createState() => _MaleVoiceState();
}

class _MaleVoiceState extends State<MaleVoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      body: Center(
        child: Column(
          children: [
            ...List.generate(
              maleFemaleVoiceList
                  .where((element) => element.gender == "male")
                  .length,
              (index) => ListTile(
                onTap: () {
                  setState(() {
                    maleFemaleVoiceList[index].isPlayingOrNot =
                        !maleFemaleVoiceList[index].isPlayingOrNot;
                  });
                },
                contentPadding: const EdgeInsets.all(5),
                leading: maleFemaleVoiceList[index].isPlayingOrNot
                    ? SvgPicture.asset(
                        "assets/icons/play.svg",
                      )
                    : SvgPicture.asset("assets/icons/notPlay.svg"),
                title: Text(
                  maleFemaleVoiceList
                      .where((element) => element.gender == "male")
                      .toList()[index]
                      .songName,
                  style: kw400size16colBlack,
                ),
                subtitle: Text(
                  maleFemaleVoiceList
                      .where((element) => element.gender == "male")
                      .toList()[index]
                      .songDuration,
                  style: kw400size11colTextGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
