import 'package:flutter_svg/svg.dart';

class MeditateHorizontal {
  SvgPicture icon;
  String text;
  SvgPicture pic;

  MeditateHorizontal({
    required this.icon,
    required this.text,
    required this.pic,
  });
}

List<MeditateHorizontal> meditateHorizontalList = [
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/all.svg"),
    text: "All",
    pic: SvgPicture.asset("assets/vectors/7daysofcalm.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/my.svg"),
    text: "My",
    pic: SvgPicture.asset("assets/vectors/anxietRelease.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/anxious.svg"),
    text: "Anxious",
    pic: SvgPicture.asset("assets/vectors/beach.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/sleep.svg"),
    text: "Sleep",
    pic: SvgPicture.asset("assets/vectors/meadows.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/kids.svg"),
    text: "Kids",
    pic: SvgPicture.asset("assets/vectors/7daysofcalm.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/all.svg"),
    text: "All",
    pic: SvgPicture.asset("assets/vectors/anxietRelease.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/my.svg"),
    text: "My",
    pic: SvgPicture.asset("assets/vectors/beach.svg"),
  ),
  MeditateHorizontal(
    icon: SvgPicture.asset("assets/icons/anxious.svg"),
    text: "Anxious",
    pic: SvgPicture.asset("assets/vectors/meadows.svg"),
  ),
];
