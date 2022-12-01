import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../routing/auto_router.gr.dart';
import '../../meditate/meditate_screen.dart';
import '../../music/music_screen.dart';
import '../../sleep/rubbish.dart';
import '../../sleep/stories/sleep_stories.dart';
import '../courses_screen.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  final user = FirebaseAuth.instance.currentUser;
  int currentindex = 0;
  final tabs = [
    CoursesScreen(),
    const SleepStoriesScreen(),
    const MeditateScreen(),
    const MusicScreen(),
    const Rubbish(),
  ];

  void _onItemTapped(int index) {
    if (index != 3) {
      setState(() {
        currentindex = index;
      });
    } else {
      AutoRouter.of(context).push(const MusicScreenRoute());
      // context.push("/music");
    }
    // if (index != 4) {
    //   setState(() {
    //     currentindex = index;
    //   });
    // } else {
    //   context.go("/user");
    // }
    // if (index != 1) {
    //   setState(() {
    //     currentindex = index;
    //   });
    // } else {
    //   context.go("/stories");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 17,
              spreadRadius: 0,
              offset: Offset(2, -5),
              color: Color.fromARGB(20, 84, 87, 92),
            ),
          ],
          color:
              // Theme.of(context).primaryColor,
              currentindex == 1 ? kNightBlue : kPureWhite,
        ),
        child: BottomNavigationBar(
          backgroundColor: currentindex == 1 ? kNightBlue : kPureWhite,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: kTextGrey,
          unselectedFontSize: 14,
          selectedFontSize: 14,
          selectedItemColor: kPurple,
          onTap: (index) => _onItemTapped(index),
          items: [
            BottomNavigationBarItem(
              icon: (currentindex == 0)
                  ? Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: kPurple,
                          borderRadius: BorderRadius.circular(18)),
                      child: SvgPicture.asset(
                        "assets/icons/homeIcon.svg",
                        color: kPureWhite,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        "assets/icons/homeIcon.svg",
                        color: kTextGrey,
                      ),
                    ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: (currentindex == 1)
                  ? Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: kPurple,
                          borderRadius: BorderRadius.circular(18)),
                      child: SvgPicture.asset(
                        "assets/icons/moonIcon.svg",
                        color: kPureWhite,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        "assets/icons/moonIcon.svg",
                        color: kTextGrey,
                      ),
                    ),
              label: "Sleep",
            ),
            BottomNavigationBarItem(
              icon: (currentindex == 2)
                  ? Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: kPurple,
                          borderRadius: BorderRadius.circular(18)),
                      child: SvgPicture.asset(
                        "assets/icons/meditateIcon.svg",
                        color: kPureWhite,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        "assets/icons/meditateIcon.svg",
                        color: kTextGrey,
                      ),
                    ),
              label: "Meditate",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  "assets/icons/musicIcon.svg",
                  color: kTextGrey,
                ),
              ),
              label: "Music",
            ),
            BottomNavigationBarItem(
              icon: (currentindex == 4)
                  ? Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: kPurple,
                          borderRadius: BorderRadius.circular(18)),
                      child: SvgPicture.asset(
                        "assets/icons/userIcon.svg",
                        color: kPureWhite,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: SvgPicture.asset(
                        "assets/icons/userIcon.svg",
                        color: kTextGrey,
                      ),
                    ),
              label: user!.displayName,
            ),
          ],
        ),
      ),
      body: tabs[currentindex],
    );
  }
}
