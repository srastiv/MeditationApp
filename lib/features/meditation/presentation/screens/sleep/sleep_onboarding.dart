import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/features/meditation/presentation/common_widgets/elevated_button_widget.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

import '../../constants/texts.dart';

class SleepOnboarding extends StatelessWidget {
  const SleepOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kNightBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            kWelcomeToSleep,
            kExploreTheNewKing,
            kAndVisualisations,
            kForRefreshingSleep,
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: SvgPicture.asset("assets/vectors/sleepyBirbs.svg"),
            ),
            const SizedBox(height: 80),
            CommonElevatedButtonWidget(
              text: kGetStarted,
              color: kPurple,
              onpressed: () {
                context.push("/stories");
              },
            ),
          ],
        ),
      ),
    );
  }
}
