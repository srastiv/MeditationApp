import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/elevated_button_widget.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import 'widgets/time_picker.dart';
import 'widgets/weekday_widget.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kWhatTimeWouldYou,
                kLikeToMeditate,
                const SizedBox(height: 15),
                kAnyTime,
                const SizedBox(height: 30),
                const SizedBox(
                  height: 212,
                  child: TimePickerWidget(),
                ),
                const SizedBox(height: 30),
                kWhichDayWouldYou,
                kLikeToMeditate,
                const SizedBox(height: 15),
                kEverydayIsFine,
                const SizedBox(height: 39),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        7,
                        (index) => WeekdayWidget(index: index),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 57),
                CommonElevatedButtonWidget(
                  text: kSave,
                  color: kPurple,
                  onpressed: () {
                    context.go("/bottomnav");
                  },
                ),
                CommonElevatedButtonWidget(
                  text: kNoThanks,
                  color: kPureWhite,
                  onpressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
