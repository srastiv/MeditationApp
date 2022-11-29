import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/courses_model.dart';
import '../../common_widgets/row_icon_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';
import 'tabbar/tabbar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({
    Key? key,
    required this.course,
  }) : super(key: key);

  final CoursesModel course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 0,
                    child: SvgPicture.asset("assets/vectors/happySun.svg")),
                const SizedBox(height: 160),
                Positioned(
                  //   bottom: 76,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: CommonRowOfIconButtonWidgets(
                      onTap: () {
                        context.go("/bottomnav");
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
                  Text(
                    course.courseTitle,
                    style: kw700size34colBlack,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    course.courseSubtitle,
                    style: kw400size14colTextGrey,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    course.courseDescription,
                    style: kw300size16colTextGrey,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/pinkHeart.svg"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          kFavorits,
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/headphones.svg"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          kLestening,
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: const [
                      Positioned(
                        child: SizedBox(
                          height: 400,
                          child: MaleFemaleVoiceTabBarWidget(),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        child: kNnrrator,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
