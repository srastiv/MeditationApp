import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/elevated_button_widget.dart';
import '../../common_widgets/silent_logo_moon.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';
import '../../routing/auto_router.gr.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightPurple,
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const SilentLOGOMoonLight(),
          const SizedBox(height: 75),
          Text(
            "Hi ${user!.displayName}, Welcome",
            style: kw400size30colSkinFontHelvetica,
          ),
          kToSilentMoon,
          const SizedBox(height: 15),
          kExploreTheApp,
          const SizedBox(height: 5),
          kPrepareForMeditation,
          const SizedBox(height: 65),

          //SvgPicture.asset("assets/vectors/purpleSquare.svg"),
          SvgPicture.asset("assets/vectors/GIRLMEDI.svg"),
          const SizedBox(height: 44),
          CommonElevatedButtonWidget(
            text: kGetStartedButtonText,
            color: kWhite,
            onpressed: () {
              AutoRouter.of(context).push(const WhatBringsRoute());
            },
          ),
        ],
      ),
    );
  }
}
