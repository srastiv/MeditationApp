import 'package:flutter/material.dart';

import '../../../common_widgets/all_my_anxious_sleep_listview.dart';
import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../../../constants/textstyle.dart';
import '../common_widgets/songs_gridview.dart';

class SleepStoriesScreen extends StatelessWidget {
  const SleepStoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: kNightBlue,
        title: kSleepStories,
        // leading: Container(
        //   padding: const EdgeInsets.all(5),
        //   child: CommonIconButtonWidget(
        //     icon: const Icon(
        //       Icons.arrow_back,
        //       color: kBlack,
        //     ),
        //     onpressed: () {
        //       // context.go("/sleep");
        //       context.pop();
        //     },
        //     color: kGrey,
        //   ),
        // ),
      ),
      backgroundColor: kNightBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              kSoothingBedtime,
              kIntoADeep,
              const SizedBox(height: 34),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 95,
                child: const AllMyAnxiousSleepListViewBuilderWidget(
                  color: kNightGreyBlue,
                  textyle: kw400size16colPureWhite,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child:
                    Image.asset("assets/background_elements/oceanmoonBG.png"),
              ),
              const SongsGridViewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
