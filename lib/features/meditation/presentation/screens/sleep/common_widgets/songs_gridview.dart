import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../dependency_injection.dart';
import '../../../constants/colors.dart';
import '../../../constants/textstyle.dart';
import '../stories/bloc/stories_bloc.dart';

class SongsGridViewWidget extends StatelessWidget {
  const SongsGridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      flex: 0,
      child: BlocProvider(
        create: (context) => sl<StoriesBloc>(),
        child: BlocBuilder<StoriesBloc, StoriesState>(
          builder: (context, state) {
            if (state is StoriesInitialState) {
              BlocProvider.of<StoriesBloc>(context).add(FetchStoriesEvent());
              return const Center(
                child: Text(
                  "Initial State",
                  style: TextStyle(color: kPurple),
                ),
              );
            } else if (state is StoriesLoadedState) {
              return GridView.builder(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: (const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 19,
                  crossAxisSpacing: 19,
                  childAspectRatio: 1 / 1,
                )),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (() {
                      var song = state.oceanMoonStories[index].title;
                      // var svg = state.oceanMoonStories[index].picture;
                      context.push(
                        "/island/$song",
                        extra: song,
                      );
                    }),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        state.oceanMoonStories[index].picture,
                        Text(
                          state.oceanMoonStories[index].title,
                          style: kw700size18colWhite,
                        ),
                        Text(
                          state.oceanMoonStories[index].subtitle,
                          style: kw400size11colTextGrey,
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (state is StoriesErrorState) {
              return Center(
                child: Text(state.errorMessage),
              );
            }
            return const Center(
              child: Text("neither error not initial not loaded"),
            );
          },
        ),
      ),
    );
  }
}
