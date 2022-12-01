import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/elevated_button_widget.dart';
import '../../common_widgets/silent_logo_moon.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../routing/auto_router.gr.dart';

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
              AutoRouter.of(context).push(SignUpRoute());
              // context.router.push(SignUp());
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
                    AutoRouter.of(context).push(SignInRoute());
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
