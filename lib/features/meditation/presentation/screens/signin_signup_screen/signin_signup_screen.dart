import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/elevated_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../common_widgets/silent_logo_moon.dart';

class SignInSignUpScreen extends StatelessWidget {
  const SignInSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kPureWhite,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset("assets/background_elements/girloncouchBG.svg"),
              const SizedBox(
                height: 100,
              ),
              Positioned(
                top: 141,
                left: 20,
                child: SvgPicture.asset("assets/vectors/girloncouch.svg"),
              ),
              const Positioned(
                top: 51,
                // left: 125,
                child: SilentLOGOMoon(),
              ),
            ],
          ),
          kWeAreWhatWeDo,
          const SizedBox(height: 15),
          kThousandOfPeopleAreUsingSmallMoon,
          const SizedBox(height: 10),
          kForSmallsMeditation,
          const SizedBox(height: 52),
          CommonElevatedButtonWidget(
            text: kSignIn,
            color: kPurple,
            onpressed: () {
              context.go("/signup");
            },
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kLogInText,
                TextButton(
                  onPressed: () {
                    context.go("/signin");
                  },
                  child: kLogin,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
