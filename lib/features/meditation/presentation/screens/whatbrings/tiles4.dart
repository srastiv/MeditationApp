import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/data_sources/local_data_sources/meditation_local_data_sources.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';
import '../../routing/auto_router.gr.dart';
import 'what_brings_you_bloc/what_brings_you_bloc.dart';

class ContainerOf4ContainersWidget extends StatelessWidget {
  const ContainerOf4ContainersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: BlocBuilder<WhatBringsYouBloc, WhatBringsYouState>(
        builder: (context, state) {
          if (state is WhatBringsYouLoadedState) {
            return ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 5,
              //  (state.whatBringsYouToSilentMoonList.length / 2).floor(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const ReminderScreenRoute());
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .27,
                            width: MediaQuery.of(context).size.width * .41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whatBringsYouToSilentMoonList[index].color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  state.whatBringsYouList[index]
                                      .whatBringsSvGpath,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, bottom: 8.0),
                                  child: Text(
                                    state.whatBringsYouList[index]
                                        .whatBringsTitle,
                                    style: kw700size18colBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 21),
                          Container(
                            height: MediaQuery.of(context).size.height * .21,
                            width: MediaQuery.of(context).size.width * .41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whatBringsYouToSilentMoonList[index + 2]
                                  .color,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    SvgPicture.asset(
                                      state.whatBringsYouList[index + 2]
                                          .whatBringsSvGpath,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 8),
                                      child: Text(
                                        state.whatBringsYouList[index + 2]
                                            .whatBringsTitle,
                                        style: kw700size18colBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .21,
                            width: MediaQuery.of(context).size.width * .41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whatBringsYouToSilentMoonList[index + 1]
                                  .color,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  //clipBehavior: Clip.none,
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    SvgPicture.asset(
                                      state.whatBringsYouList[index + 1]
                                          .whatBringsSvGpath,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 8.0,
                                          left: 8,
                                        ),
                                        child: Text(
                                          state.whatBringsYouList[index + 1]
                                              .whatBringsTitle,
                                          style: kw700size18colBlack,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 21),
                          Container(
                            height: MediaQuery.of(context).size.height * .26,
                            width: MediaQuery.of(context).size.width * .41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whatBringsYouToSilentMoonList[index + 3]
                                  .color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  state.whatBringsYouList[index + 3]
                                      .whatBringsSvGpath,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 3, right: 3),
                                  child: Text(
                                    state.whatBringsYouList[index + 3]
                                        .whatBringsTitle,
                                    style: kw700size18colBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }

          return kNeitherState;
        },
      ),
    );
  }
}
