import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/what_brings_entity.dart';
import '../../../../domain/usecases/what_brings_usecase.dart';

part 'what_brings_event.dart';
part 'what_brings_state.dart';

class WhatBringsBloc extends Bloc<WhatBringsEvent, WhatBringsState> {
  final GetWhatBringsUsecase getWhatBringsUsecase;

  WhatBringsBloc({
    required this.getWhatBringsUsecase,
  }) : super(WhatBringsInitialState()) {
    on<FetchWhatBringsDataEvent>((event, emit) {
      final whatBrings = getWhatBringsUsecase.getWhatBrings();

      whatBrings.fold(
        (failure) => emit(
          const WhatBringsErrorState("errorMessage from bloc"),
        ),
        (whatBrings) => emit(
          WhatBringsDataLoadedState(whatBringsYouToSilentMoonList: whatBrings),
        ),
      );
    });
  }
}
