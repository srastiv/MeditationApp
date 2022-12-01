// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/what_brings_you_model.dart';
import '../../../../domain/usecases/what_brings_you_usecase.dart';

part 'what_brings_you_event.dart';
part 'what_brings_you_state.dart';

class WhatBringsYouBloc extends Bloc<WhatBringsYouEvent, WhatBringsYouState> {
  GetWhatBringsYouUsecase getWhatBringsYouUsecase;

  WhatBringsYouBloc({
    required this.getWhatBringsYouUsecase,
  }) : super(WhatBringsYouInitialState()) {
    on<FetchWhatBringsYouDataEvent>((event, emit) async {
      final whatBringsYou =
          await getWhatBringsYouUsecase.repository.getWhatBringsYou();

      whatBringsYou.fold(
          (failure) => emit(
                const WhatBringsYouErrorState(
                    errorMessage: "Error detected in whatbringsyouBLOC"),
              ),
          (whatBringsYou) =>
              emit(WhatBringsYouLoadedState(whatBringsYouList: whatBringsYou)));
    });
  }
}
