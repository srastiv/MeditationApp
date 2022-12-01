import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/features/meditation/presentation/screens/whatbrings/tiles4.dart';
import 'package:meditation/features/meditation/presentation/screens/whatbrings/what_brings_you_bloc/what_brings_you_bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:kiwi/kiwi.dart' ;
//import '../../../../../core/dependency_injection/dependency_injection.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';

class WhatBrings extends StatelessWidget {
  const WhatBrings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 76),
            kWhatBringsYou,
            kYouToSilentMoon,
            const SizedBox(height: 16),
            kChooseATopic,
            const SizedBox(height: 30),
            BlocProvider(
              create: (context) =>
                KiwiContainer().resolve<WhatBringsYouBloc>(),
              child: BlocBuilder<WhatBringsYouBloc, WhatBringsYouState>(
                builder: (context, state) {
                  if (state is WhatBringsYouInitialState) {
                    BlocProvider.of<WhatBringsYouBloc>(context)
                        .add(FetchWhatBringsYouDataEvent());
                    return const Center(
                      child: Text(
                        "Initial State",
                        style: TextStyle(color: kPurple),
                      ),
                    );
                  } else if (state is WhatBringsYouLoadedState) {
                    return const Flexible(
                      child: ContainerOf4ContainersWidget(),
                    );
                  } else if (state is WhatBringsYouErrorState) {
                    return Center(
                      child: Text(state.errorMessage),
                    );
                  }
                  return const Center(
                    child: kNeitherState,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
