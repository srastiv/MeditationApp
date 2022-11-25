import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/features/meditation/presentation/screens/whatbrings/tiles4.dart';

import '../../../../../dependency_injection.dart';
import '../../constants/colors.dart';
import '../../constants/texts.dart';
import 'bloc/what_brings_bloc.dart';

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
              create: (context) => sl<WhatBringsBloc>(),
              child: BlocBuilder<WhatBringsBloc, WhatBringsState>(
                builder: (context, state) {
                  if (state is WhatBringsInitialState) {
                    BlocProvider.of<WhatBringsBloc>(context)
                        .add(FetchWhatBringsDataEvent());
                    return const Center(
                      child: Text(
                        "Initial State",
                        style: TextStyle(color: kPurple),
                      ),
                    );
                  } else if (state is WhatBringsDataLoadedState) {
                    return const Flexible(
                      child: ContainerOf4ContainersWidget(),
                    );
                  } else if (state is WhatBringsErrorState) {
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
          ],
        ),
      ),
    );
  }
}
