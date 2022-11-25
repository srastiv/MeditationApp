import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/features/meditation/presentation/screens/courses/bloc/courses_bloc.dart';

import '../../../../../dependency_injection.dart';
import '../../common_widgets/silent_logo_moon.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../../constants/textstyle.dart';

List<SvgPicture> homepageSVGList = [
  SvgPicture.asset("assets/vectors/greenFocusMeditate.svg"),
  SvgPicture.asset("assets/vectors/yellowHappinessMeditate.svg"),
  SvgPicture.asset("assets/vectors/greenFocusMeditate.svg"),
];

class CoursesScreen extends StatelessWidget {
  CoursesScreen({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => sl<CoursesBloc>(),
            child: BlocBuilder<CoursesBloc, CoursesState>(
              builder: (context, state) {
                if (state is CoursesInitialState) {
                  BlocProvider.of<CoursesBloc>(context)
                      .add(FetchCoursesEvent());

                  return const Center(
                    child: Text(
                      "initial state",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else if (state is CoursesLoadedState) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SilentLOGOMoon(),
                        const SizedBox(height: 40),
                        Text(
                          "Good Morning, ${user!.displayName}",
                          style: kw700size28colBlack,
                        ),
                        const SizedBox(height: 10),
                        kWeWishYouHaveAGoodDay,
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                      "assets/vectors/basicsCourse.svg"),
                                  Positioned(
                                    top: 144,
                                    left: 10,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        k310mins,
                                        const SizedBox(
                                          width: 26,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            context.push("/user");
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: kWhite,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          child: kStart,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: SvgPicture.asset(
                                    "assets/vectors/relaxationMusic.svg")),
                          ],
                        ),
                        SvgPicture.asset("assets/vectors/dailyThought.svg"),
                        const SizedBox(height: 20),
                        kRecommendedForYou,
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 170,
                          // fit: FlexFit.loose,
                          // flex: 0,
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0),
                            scrollDirection: Axis.horizontal,
                            itemCount: homepageSVGList.length,
                            itemBuilder: ((context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kLightGreen,
                                    ),
                                    margin: const EdgeInsets.only(
                                        right: 10, bottom: 10),
                                    child: homepageSVGList[index],
                                  ),
                                  const Expanded(child: kFocus),
                                  const Expanded(child: kMeditation),
                                ],
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                if (state is CoursesErrorState) {
                  return Center(
                    child: Text(
                      state.message,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: Text(
                      "Neither loaded, initial or error state",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
