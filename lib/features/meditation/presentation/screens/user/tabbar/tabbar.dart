import 'package:flutter/material.dart';
import 'package:meditation/features/meditation/presentation/screens/user/tabbar/female.dart';
import 'package:meditation/features/meditation/presentation/screens/user/tabbar/male.dart';

import '../../../constants/colors.dart';

class MaleFemaleVoiceTabBarWidget extends StatelessWidget {
  const MaleFemaleVoiceTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: kPureWhite,
          elevation: 0,
          bottom: const TabBar(
            indicatorColor: kPurple,
            indicatorPadding: EdgeInsets.only(left: 60, right: 60),
            labelColor: kPurple,
            unselectedLabelColor: kBlack,
            tabs: [
              Tab(text: "MALE VOICE"),
              Tab(text: "FEMALE VOICE"),
            ],
            labelStyle: TextStyle(color: kBlack),
          ),
        ),
        body: const TabBarView(
          children: [
            MaleVoice(),
            FemaleVoice(),
          ],
        ),
      ),
    );
  }
}
