import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/all_my_anxious_sleep_listview.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';
import 'data/data.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kMeditate,
              const SizedBox(height: 15),
              kWeCanLearn,
              kAreDoingTheirNormal,
              const SizedBox(height: 34),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 95,
                child: const AllMyAnxiousSleepListViewBuilderWidget(
                  color: kTextGrey,
                  textyle: kw400size16,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: SvgPicture.asset("assets/vectors/dialyCalm.svg"),
              ),
              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 20,
                    itemCount: meditateHorizontalList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          color: kPureWhite,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: meditateHorizontalList[index].pic,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
