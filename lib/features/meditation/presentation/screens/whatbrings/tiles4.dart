import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/what_brings_bloc.dart';

class ContainerOf4ContainersWidget extends StatelessWidget {
  const ContainerOf4ContainersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: BlocBuilder<WhatBringsBloc, WhatBringsState>(
        builder: (context, state) {
          if (state is WhatBringsDataLoadedState) {
            return ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 5,
              //  (state.whatBringsYouToSilentMoonList.length / 2).floor(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.go("/reminders");
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
                              color: state
                                  .whatBringsYouToSilentMoonList[index].color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                state
                                    .whatBringsYouToSilentMoonList[index].image,
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, bottom: 8.0),
                                  child: state
                                      .whatBringsYouToSilentMoonList[index]
                                      .text,
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
                              color: state
                                  .whatBringsYouToSilentMoonList[index + 2]
                                  .color,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    state
                                        .whatBringsYouToSilentMoonList[
                                            index + 2]
                                        .image,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 8),
                                      child: state
                                          .whatBringsYouToSilentMoonList[
                                              index + 2]
                                          .text,
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
                              color: state
                                  .whatBringsYouToSilentMoonList[index + 1]
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
                                    state
                                        .whatBringsYouToSilentMoonList[
                                            index + 1]
                                        .image,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                        left: 8,
                                      ),
                                      child: state
                                          .whatBringsYouToSilentMoonList[
                                              index + 1]
                                          .text,
                                    ),
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
                              color: state
                                  .whatBringsYouToSilentMoonList[index + 3]
                                  .color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                state.whatBringsYouToSilentMoonList[index + 3]
                                    .image,
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 3, right: 3),
                                  child: state
                                      .whatBringsYouToSilentMoonList[index + 3]
                                      .text,
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

          return const Text("not loaded state");
        },
      ),
    );
  }
}
