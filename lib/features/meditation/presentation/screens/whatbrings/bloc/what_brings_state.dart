part of 'what_brings_bloc.dart';

abstract class WhatBringsState extends Equatable {
  const WhatBringsState();

  @override
  List<Object> get props => [];
}

class WhatBringsInitialState extends WhatBringsState {}

class WhatBringsDataLoadedState extends WhatBringsState {
  final List<WhatBringsEntity> whatBringsYouToSilentMoonList;
  const WhatBringsDataLoadedState({required this.whatBringsYouToSilentMoonList})
      : super();
}

class WhatBringsErrorState extends WhatBringsState {
  final String errorMessage;
  const WhatBringsErrorState(this.errorMessage);
}
