import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../dependency_injection.dart';
import '../../../constants/colors.dart';
import '../../../constants/textstyle.dart';
import '../bloc/weekdays_bloc.dart';

class WeekdayWidget extends StatefulWidget {
  const WeekdayWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<WeekdayWidget> createState() => _WeekdayWidgetState();
}

class _WeekdayWidgetState extends State<WeekdayWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WeekdaysBloc>(),
      child: BlocBuilder<WeekdaysBloc, WeekdaysState>(
        builder: (context, state) {
          if (state is WeekdaysInitialState) {
            BlocProvider.of<WeekdaysBloc>(context).add(FetchWeekdaysEvent());
            return const Center(
              child: Text(
                "Initial State",
                style: TextStyle(color: kPurple),
              ),
            );
          } else if (state is WeekdaysLoadedState) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  state.weekdays[widget.index].selectedOrNot =
                      !state.weekdays[widget.index].selectedOrNot;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: kTextGrey),
                    borderRadius: BorderRadius.circular(200),
                    color: state.weekdays[widget.index].selectedOrNot
                        ? kPureWhite
                        : kDarkNightGrey),
                child: CircleAvatar(
                  backgroundColor: state.weekdays[widget.index].selectedOrNot
                      ? kPureWhite
                      : kDarkNightGrey,
                  child: Text(
                    state.weekdays[widget.index].weekdays,
                    style: state.weekdays[widget.index].selectedOrNot
                        ? kw400size14colTextGrey
                        : kw400size14colPureWhite,
                  ),
                ),
              ),
            );
          } else if (state is WeekdaysErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          return const Center(
            child: Text("neither error not initial not loaded"),
          );
        },
      ),
    );
  }
}
