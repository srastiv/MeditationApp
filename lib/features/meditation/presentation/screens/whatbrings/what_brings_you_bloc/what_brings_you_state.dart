part of 'what_brings_you_bloc.dart';

abstract class WhatBringsYouState extends Equatable {
  const WhatBringsYouState();

  @override
  List<Object> get props => [];
}

class WhatBringsYouInitialState extends WhatBringsYouState {}

class WhatBringsYouLoadedState extends WhatBringsYouState {
  final List<WhatBringsYouModel> whatBringsYouList;
  const WhatBringsYouLoadedState({required this.whatBringsYouList}) : super();
}

class WhatBringsYouErrorState extends WhatBringsYouState {
  final String errorMessage;
  const WhatBringsYouErrorState({required this.errorMessage});
}
